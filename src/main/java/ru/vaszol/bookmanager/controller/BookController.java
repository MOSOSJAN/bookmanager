package ru.vaszol.bookmanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.vaszol.bookmanager.domain.Book;
import ru.vaszol.bookmanager.repository.BookRepository;

import java.util.List;

/**
 * Created by vas on 15.10.2015.
 */
@Controller
public class BookController {
    private BookRepository bookRepository;

    @Autowired
    public BookController(BookRepository bookRepository){
        this.bookRepository = bookRepository;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getBooks(Model model){
        List<Book> books = this.bookRepository.listAll();
        model.addAttribute("books",books);
        return "index";

    }
}
