package com.as.Pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * @author 12aaa-zone
 */

@Data                           // lombok生成getter setter
@AllArgsConstructor             // lombok生成全参构造
@NoArgsConstructor              // lombok生成无参构造
public class Books {
    private int bookID;
    private String bookName;
    private int bookCounts;
    private String detail;
}
