package BancoDeDados.Proejeto.EducaLivros.Teste.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import BancoDeDados.Proejeto.EducaLivros.Teste.persistance.entity.OnlineAccount;
import BancoDeDados.Proejeto.EducaLivros.Teste.service.OnlineAccountService;

@RestController
@RequestMapping(path = "api/v1/onlineaccount")
public class OnlineAccountController {
    @Autowired
    private final OnlineAccountService onlineAccountService;

    @Autowired
    public OnlineAccountController(OnlineAccountService onlineAccountService){
        this.onlineAccountService = onlineAccountService;
    }

    @GetMapping
	public List<OnlineAccount> hello(){
	return onlineAccountService.getOnlineAccount();
	}
}
