package com.springapp.mvc;

//import com.springapp.mvc.springconfig.User;
//import com.springapp.mvc.springconfig.UserDB;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

/**
 * Created by fkma on 4/20/15.
 */

@Controller
@RequestMapping("/user")
public class UserController extends MultiActionController {

    //@RequestMapping(params="method=reg", method = RequestMethod.GET)
    @RequestMapping(value = "/reg")
    public ModelAndView reg(ModelAndView model) {

        ModelAndView mav = new ModelAndView("InfoList");
        mav.addObject("zhangsan", "zhangsan");
        mav.addObject("zhangsan_account", "100");
        mav.addObject("zhangsan_remark", "salry");

        mav.addObject("lisi", "lisi");
        mav.addObject("lisi_account", "90");
        mav.addObject("lisi_remark", "bonus");

        return mav; //new ModelAndView("InfoList", model.asMap().["username"]);
    }

    @RequestMapping(value = "building")
    public ModelAndView building(ModelAndView model) {
        return new ModelAndView("building");
    }
}
