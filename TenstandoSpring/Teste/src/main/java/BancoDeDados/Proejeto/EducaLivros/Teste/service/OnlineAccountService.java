package BancoDeDados.Proejeto.EducaLivros.Teste.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.OnlineAccount;
import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.repository.OnlineAccountRepository;

@Service
public class OnlineAccountService {
    private final OnlineAccountRepository onlineAccountRepository;

    @Autowired
    public OnlineAccountService(OnlineAccountRepository onlineAccountRepository){
        this.onlineAccountRepository = onlineAccountRepository;
    }

    public List<OnlineAccount> getOnlineAccount(){
        return onlineAccountRepository.findAll();
    }
}
