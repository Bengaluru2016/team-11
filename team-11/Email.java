/**
 * 
 */
package villgro;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
/**
 * @author Shubham
 *
 */
public class Email {

	/**
	 * 
	 */
	public Email() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param args
	 */
	public  void sendEmail(String from, String to,String msg,String subject) throws RuntimeException {
		// TODO Auto-generated method stub
		//String from = "barsaiyashubham@gmail.com";//change accordingly

	      // Sender's email ID needs to be mentioned
	      //String to = "shubham.bar@gmail.com";//change accordingly
	      final String username = "barsaiyashubham@gmail.com";//change accordingly
	      final String password = "27shubham1994";//change accordingly

	      // Assuming you are sending email through relay.jangosmtp.net
	      String host = "smtp.gmail.com";

	      Properties props = new Properties();
	      props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.starttls.enable", "true");
	      props.put("mail.smtp.host", host);
	      props.put("mail.smtp.port", "587");

	      // Get the Session object.
	      Session session = Session.getInstance(props,
	      new javax.mail.Authenticator() {
	         protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(username, password);
	         }
	      });

	      try {
	         // Create a default MimeMessage object.
	         Message message = new MimeMessage(session);

	         // Set From: header field of the header.
	         message.setFrom(new InternetAddress(from));

	         // Set To: header field of the header.
	         message.setRecipients(Message.RecipientType.TO,
	         InternetAddress.parse(to));

	         // Set Subject: header field
	         message.setSubject(subject);

	         // Now set the actual message
	         message.setText(msg + "email using JavaMailAPI ");

	         // Send message
	         Transport.send(message);

	         System.out.println("Sent message successfully....");

	      } catch (MessagingException e) {
	            throw new RuntimeException(e);
	      }
	   }

	}

