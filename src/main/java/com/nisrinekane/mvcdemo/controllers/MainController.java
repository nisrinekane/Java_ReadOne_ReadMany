package com.nisrinekane.mvcdemo.controllers;

import com.nisrinekane.mvcdemo.models.Book;
import com.nisrinekane.mvcdemo.services.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@Controller
public class MainController {
    @Autowired
    BookService bookService;

    //show one book
    @GetMapping("/books/{bookId}")
    public String index(Model model, @PathVariable("bookId") Long bookId) {
        System.out.println(bookId);
        Book book = bookService.findBook(bookId);
        System.out.println(book);
        model.addAttribute("book", book);
        return "show.jsp";
    }

    //show all books
    @RequestMapping("/books")
    public String index(Model model) {
        List<Book> books = bookService.allBooks();
        model.addAttribute("books", books);
        return "index.jsp";
    }

    //post method to create a book
    @PostMapping(value = "/books")
    public Book create(@RequestParam(value = "title") String title,
                       @RequestParam(value = "description") String desc,
                       @RequestParam(value = "language") String lang,
                       @RequestParam(value = "pages") Integer numOfPages) {
        Book book = new Book(title, desc, lang, numOfPages);
        return bookService.createBook(book);
    }

}
