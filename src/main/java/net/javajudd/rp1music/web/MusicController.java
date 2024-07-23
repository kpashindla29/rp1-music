package net.javajudd.rp1music.web;

import net.javajudd.rp1music.domain.Song;
import net.javajudd.rp1music.domain.User;
import net.javajudd.rp1music.repository.SongRepository;
import net.javajudd.rp1music.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping("/music")
public class MusicController {

    @Autowired
    private SongRepository songRepository;

    @Autowired
    private UserRepository userRepository;

    private static final Logger logger = LoggerFactory.getLogger(MusicController.class);

    @RequestMapping(path = {"", "index", "all"}, method = GET)
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("music/index");
        List<Song> songs = songRepository.findAll();
        mav.addObject("songs", songs);
        return mav;
    }

    @RequestMapping(path = {"", "index", "all"}, method = POST)
    public String index(Principal principal, @RequestParam(value = "songs", required = false) List<Long> selectedSongs) {

        User currentUser = userRepository.findByEmail(principal.getName());

        if(selectedSongs != null) {
            for (Long songId : selectedSongs) {
                Song song = songRepository.getOne(songId);
                if (!currentUser.getSongs().contains(song)) {
                    currentUser.addSong(song);
                }
                logger.info("{} added {} to their library.", currentUser.getEmail(), song.getName());
            }

            userRepository.save(currentUser);
        }

        return "redirect:/";
    }

}
