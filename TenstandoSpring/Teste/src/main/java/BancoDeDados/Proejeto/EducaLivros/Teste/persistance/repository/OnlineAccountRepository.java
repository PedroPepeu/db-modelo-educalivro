package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.OnlineAccount;

@Repository
public interface OnlineAccountRepository extends JpaRepository<OnlineAccount,String > {
        Optional<OnlineAccount> findOnlineAccountByidNum(String idNum);
}
