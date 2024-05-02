package BancoDeDados.Proejeto.EducaLivros.Teste.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.LibraryBooks;
import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.repository.LibraryBooksRepository;

@Service
public class LibraryBooksService {
    private final LibraryBooksRepository libraryBooksRepository;

    @Autowired
    public LibraryBooksService(LibraryBooksRepository libraryBooksRepository){
        this.libraryBooksRepository = libraryBooksRepository;
    }

    public List<LibraryBooks> getLibraryBooks(){
        return libraryBooksRepository.findAll();
    }
}
