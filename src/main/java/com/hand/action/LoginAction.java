package com.hand.action;

import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hand.dao.CustomerDao;
import com.hand.dao.PageDao;
import com.hand.dao.UserDao;
import com.hand.model.Customer;
import com.hand.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String uname;
	private String pword;
	private int pagecount;

	
	

	@Autowired 
	ApplicationContext ac = new ClassPathXmlApplicationContext(new String[]{"spring.xml","spring-hibernate.xml"});
	CustomerDao customerDao =(CustomerDao) ac.getBean("customerDao");
	Customer customer =  (Customer) ac.getBean("customer");
	PageDao pageDao= (PageDao) ac.getBean("pageDao");
	User user = (User) ac.getBean("user");
	UserDao userDao = (UserDao) ac.getBean("userDao");
	 
	public String Login() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession(); 
/*		
		if(uname.equals("admin")){
			ServletResponse response = ServletActionContext.getResponse();
			PrintWriter out = response.getWriter();
			System.out.println("{\"uname\":\"" + uname  + "}");  
			out.print("{\"uname\":\"" + uname  + "}");  
	          
	        out.flush();  
	        out.close();  
		}
		*/

			 if (uname == null || uname.trim().equals("")||pword == null || pword.trim().equals(""))
		      {
		        	session.setAttribute("login_message", "用户名或者密码不能为空！");
		        	return "tologin";
		      }else{
		    	  
		 		 user.setUser_name(uname);
		 		 user.setUser_pwd(pword);
		 	        if(userDao.check(user)) {
		 	        	session.removeAttribute("login_message");
//		 	        	int pagecount = pageDao.getPageCount();
//		 	        	System.out.println("获得的总页数："+pagecount);
//		 	        	session.setAttribute("pagecount", pagecount);
		 	        	return SUCCESS;  
		 	        }
		 	        session.setAttribute("login_message", "用户名或者密码错误！");
		 	        return "tologin";
		      }
	}
	

	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPword() {
		return pword;
	}
	public void setPword(String pword) {
		this.pword = pword;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public UserDao getUserDao() {
		return userDao;
	}


	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	
	
}
