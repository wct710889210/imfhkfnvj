package com.btcd.service;

import com.btcd.conf.StaticConf;
import com.btcd.dao.BannerDao;
import com.btcd.dao.ProjectDaoImp;
import com.btcd.dao.UserDao;
import com.btcd.data.Banner;
import com.btcd.data.Project;
import com.btcd.data.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.sql.Date;
import java.util.List;
import java.util.Properties;

@Service("indexService")
public class IndexServiceImp implements IndexService{

    @Autowired
    private BannerDao bannerDao;
    @Autowired
    private UserDao userDao;
    @Autowired
    private StaticConf staticConf;
    @Autowired
    private ProjectDaoImp projectDao;

    // 发件人的 邮箱 和 授权码
    public static String myEmailAccount = "kxbk100@foxmail.com";
    public static String myEmailPassword = "yevvmjcahefbbfaf";
    // 发件人邮箱的 SMTP 服务器地址
    public static String myEmailSMTPHost = "smtp.qq.com";

    @Override
    public void addBanner(String title, String path) {
        Banner banner = new Banner();
        banner.setTitle(title);
        banner.setPath(path);
        bannerDao.add(banner);
    }

    @Override
    public List<Banner> findAll() {
        return bannerDao.findAll();
    }

    @Override
    public List<Project> findAllProject(){
        List<Project> projects = projectDao.findAll();
        //判断状态
        for(Project item:projects){
            if(!item.getState().equals("准备中")){
                int state = item.getEndTime().compareTo(new Date(System.currentTimeMillis()));
                if(state<0){
                    item.setState("已结束");
                }
            }
        }
        return projects;
    }

    @Override
    public User findUserByAccount(String account) {
        return userDao.findByAccount(account);
    }

    @Override
    public void addUser(String account, String password) {
        User user = new User();
        user.setConfirm(DigestUtils.md5DigestAsHex(account.getBytes()));
        user.setAccount(account);
        user.setPassword(password);
        user.setBalance(0);
        user.setFrozen(false);
        user.setInvite(staticConf.inviteUrl+DigestUtils.md5DigestAsHex(account.getBytes()));
        user.setTime(new Date(System.currentTimeMillis()));
        user.setActivate(false);
        userDao.add(user);
    }

    @Override
    public void sendEmail(String receiveMail) {
        try {

            //发送验证邮件
            // 1. 创建参数配置, 用于连接邮件服务器的参数配置
            Properties props = new Properties();                    // 参数配置
            props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
            props.setProperty("mail.smtp.host", myEmailSMTPHost);   // 发件人的邮箱的 SMTP 服务器地址
            props.setProperty("mail.smtp.auth", "true");            // 需要请求认证

            // SMTP 连接使用 SSL 安全认证
            final String smtpPort = "465";
            props.setProperty("mail.smtp.port", smtpPort);
            props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.setProperty("mail.smtp.socketFactory.fallback", "false");
            props.setProperty("mail.smtp.socketFactory.port", smtpPort);


            // 2. 根据配置创建会话对象, 用于和邮件服务器交互
            Session session = Session.getInstance(props);
            session.setDebug(true);                                 // 设置为debug模式, 可以查看详细的发送 log

            // 3. 创建一封邮件
            String url = staticConf.confirmUrl+DigestUtils.md5DigestAsHex(receiveMail.getBytes());		//创建验证url
            MimeMessage message = createMimeMessage(session, myEmailAccount, receiveMail,url);

            // 4. 根据 Session 获取邮件传输对象
            Transport transport = session.getTransport();

            transport.connect(myEmailAccount, myEmailPassword);

            // 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
            transport.sendMessage(message, message.getAllRecipients());

            // 7. 关闭连接
            transport.close();
        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public User findUserByConfirm(String confirm) {
        return userDao.findByConfirm(confirm);
    }

    @Override
    public void updateUser(User user) {
        userDao.update(user);
    }

    @Override
    public List<User> findAllUser() {
        return userDao.findAll();
    }

    public MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail,String url) throws Exception {
        // 1. 创建一封邮件
        MimeMessage message = new MimeMessage(session);

        // 2. From: 发件人（昵称有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改昵称）
        message.setFrom(new InternetAddress(sendMail, "BitCandy", "UTF-8"));

        // 3. To: 收件人（可以增加多个收件人、抄送、密送）
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, "BitCandy用户", "UTF-8"));

        // 4. Subject: 邮件主题（标题有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改标题）
        message.setSubject("BitCandy邮箱验证", "UTF-8");

        // 5. Content: 邮件正文（可以使用html标签）（内容有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改发送内容）
        message.setContent("BitCandy用户你好, 点击下列地址激活您的账号："+url, "text/html;charset=UTF-8");

        // 6. 设置发件时间
        message.setSentDate(new java.util.Date());

        // 7. 保存设置
        message.saveChanges();

        return message;
    }
}
