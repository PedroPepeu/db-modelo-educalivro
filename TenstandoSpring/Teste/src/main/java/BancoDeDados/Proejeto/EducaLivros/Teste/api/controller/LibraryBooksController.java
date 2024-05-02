package BancoDeDados.Proejeto.EducaLivros.Teste.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.LibraryBooks;
import BancoDeDados.Proejeto.EducaLivros.Teste.service.LibraryBooksService;

@RestController
@RequestMapping(path = "api/v1/librarybook")
public class LibraryBooksController {
    @Autowired
    private final LibraryBooksService libraryBooksService;

    @Autowired
    public LibraryBooksController(LibraryBooksService libraryBooksService){
        this.libraryBooksService = libraryBooksService;
    }

    @GetMapping
	public List<LibraryBooks> start(){
	return libraryBooksService.getLibraryBooks();
	}
}
