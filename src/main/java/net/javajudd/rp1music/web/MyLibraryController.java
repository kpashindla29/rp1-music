package net.javajudd.rp1music.web;

import net.javajudd.rp1music.domain.User;
import net.javajudd.rp1music.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;

@Controller
@RequestMapping("/")
public class MyLibraryController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping({"/", "library"})
    public ModelAndView index(Principal principal) {
        ModelAndView mav = new ModelAndView("index");
        User currentUser = userRepository.findByEmail(principal.getName());
        mav.addObject("songs", currentUser.getSongs());
        return mav;
    }

}
