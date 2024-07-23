package net.javajudd.rp1music.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class LoginController {

    @Autowired
    AuthenticationManager authenticationManager;

    @RequestMapping(value = {"/login"}, method = GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = {"/login"}, method = POST)
    public String loginPost(@RequestParam("username") String username, @RequestParam("password") String password) {
        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(username, password);

        authenticationManager.authenticate(token);

        return "redirect:/";
    }
}
