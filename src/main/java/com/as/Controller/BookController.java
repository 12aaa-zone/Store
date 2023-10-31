package com.as.Controller;

import com.as.Pojo.Books;
import com.as.Service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author 12aaa-zone
 */
@Controller
@RequestMapping("/book")
public class BookController {

    /* 标记字段，自动注入bean*/
    @Autowired
    /**满足该类型的bean可能有多种
     * 用Qualifier注解指明具体是哪个bean
     */
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }
}
