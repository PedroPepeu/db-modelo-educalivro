package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.LibraryBooks;

@Repository
public interface LibraryBooksRepository extends  JpaRepository<LibraryBooks,String > {
    Optional<LibraryBooks> findLibraryBooksByidNum(String idNum);
}
