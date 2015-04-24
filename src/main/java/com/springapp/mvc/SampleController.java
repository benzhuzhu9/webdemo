package com.springapp.mvc;

/**
 * Created by fkma on 4/16/15.
 */
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class SampleController {

    @RequestMapping("home")
    public String loadHomePage(Model m) {
        return "home";
    }

    @RequestMapping(value="login")
    public ModelAndView loginPage(String username,String password){//, Model model
        ModelAndView mv = new ModelAndView();
        if (username == null){
            mv.setViewName("login");
        }
        else if (username.equals("123") && password.equals("123")) {
            mv.setViewName("redirect:/user/reg");
        }
        else{
            mv.setViewName("No");
        }

        return mv;
    }

}