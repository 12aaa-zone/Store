import com.as.Pojo.Books;
import com.as.Service.BookService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Calendar;
import java.util.Date;

/**
 * @author 12aaa-zone
 */
public class MyTest {
    ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    BookService bookServiceImpl = (BookService) context.getBean("BookServiceImpl");

    @Test
    public  void  test(){
        for(Books books:bookServiceImpl.queryAllBook()){
            System.out.println(books);
        }
    }

    @Test
    public void addBook(){
        Books data = new Books(1,"告诉",20,"厉害");
        bookServiceImpl.addBook(data);


    }
}
