package com.as.Service.Impl;

import com.as.Dao.BookMapper;
import com.as.Pojo.Books;
import com.as.Service.BookService;

import java.util.List;

/**
 * @author 12aaa-zone
 */
public class BookServiceImpl implements BookService {


    /**
     * 这里是mybatis 动态挂载的映射函数
     * 囊括了mybatis配置法映射sql语句实现的多个方法
     */
    private BookMapper bookMapper;

    /**
     *调用dao层的操作，设置一个set接口，方便Spring管理
     */
    public void setBookMapper(BookMapper bookMapper){
        this.bookMapper = bookMapper;
    }
    public BookMapper getBookMapper() {
        return bookMapper;
    }

    @Override
    public int addBook(Books book) {
        return bookMapper.addBook(book);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    @Override
    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    @Override
    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }
}
