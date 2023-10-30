package com.as.Dao;

import com.as.Pojo.Books;

import java.util.List;

/**
 * @author 12aaa-zone
 */
public interface BookMapper {
    /**
     * 增加一个Book
     *
     * @param book 要添加的Book对象
     * @return 受影响的行数
     */
    int addBook(Books book);


    /**
     * 根据id删除一个Book
     *
     * @param id 要删除的Book的id
     * @return 受影响的行数
     */
    int deleteBookById(int id);


    /**
     * 更新Book
     *
     * @param books 包含更新信息的Book对象
     * @return 受影响的行数
     */
    int updateBook(Books books);


    /**
     * 根据id查询,返回一个Book
     *
     * @param id 要查询的Book的id
     * @return 查询到的Book对象
     */
    Books queryBookById(int id);


    /**
     * 查询全部Book,返回list集合
     *
     * @return 包含所有Book对象的List集合
     */
    List<Books> queryAllBook();


}
