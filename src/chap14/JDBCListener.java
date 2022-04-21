package chap14;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class JDBCListener
 *
 */
@WebListener
public class JDBCListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public JDBCListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  {
    	ServletContext application = sce.getServletContext();
    	String jdbcInfoFilePath = "/WEB-INF/props/jdbc.properties";
    	InputStream propsFile = application.getResourceAsStream(jdbcInfoFilePath);
    	
    	Properties props = new Properties();
    	try {
			props.load(propsFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
    	
    	System.out.println(props);
    	
    }
	
}









