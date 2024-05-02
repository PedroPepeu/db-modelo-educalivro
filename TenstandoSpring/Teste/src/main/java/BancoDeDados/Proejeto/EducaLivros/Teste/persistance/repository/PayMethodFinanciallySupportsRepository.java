package BancoDeDados.Proejeto.EducaLivros.Teste.persistance.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.PayMethodFinanciallySupports;


@Repository
public interface PayMethodFinanciallySupportsRepository extends JpaRepository<PayMethodFinanciallySupports,String > {
    Optional<PayMethodFinanciallySupports> findPayMethodByCryptoWalletNumber(String crypto_wallet_number);
}
