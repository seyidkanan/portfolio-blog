package az.kanan.Test.blog.controller;

import az.kanan.Test.blog.model.*;
import az.kanan.Test.blog.service.UserService;
import az.kanan.Test.blog.util.Util;
import az.kanan.Test.blog.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import az.kanan.Test.blog.model.ResponseStatus;

import java.util.List;

/**
 * Created by Kanan on 7/14/2017.
 */
@Controller
public class ServiceController {

    @Autowired
    PostService postService;

    @Autowired
    UserService userService;

    @RequestMapping("/")
    public String index(Model model) {
        String userName = null;
        List<Post> postList = postService.findAll();
        for (Post post : postList) {
            if (post.getText().length() > 300) {
                post.setShortText(post.getText().substring(0, 299));
            } else {
                post.setShortText(post.getText());
            }
            post.setDate(Util.changeFormatDate(post.getDate()));
            userName = post.getUser().getNameAndSurname();
        }
        model.addAttribute("posts", postList);
        model.addAttribute("userName", userName);
        return "welcome";
    }

    @RequestMapping(value = "/post", method = RequestMethod.GET)
    public String readPost(Model model, @RequestParam(value = "id") Long id) {
        Post post = postService.findPostById(id);
        post.setDate(Util.changeFormatDate(post.getDate()));
        model.addAttribute("post", post);
        return "single";
    }

    @RequestMapping("/admin")
    public String adminPage(Model model) {
        return "admin";
    }


    @RequestMapping(value = "/post_list", method = RequestMethod.GET, produces = "application/json")
    @ResponseBody
    public List<Post> postData(Model model) {
        List<Post> postList = postService.findAll();
        for (Post post : postList) {
            if (post.getText().length() > 300) {
                post.setShortText(post.getText().substring(0, 299));
            } else {
                post.setShortText(post.getText());
            }
            post.setDate(Util.changeFormatDate(post.getDate()));
        }
        return postList;
    }

    @RequestMapping(value = "/user_list", method = RequestMethod.GET, produces = "application/json")
    @ResponseBody
    public List<User> userData(Model model) {
        List<User> userList = userService.findAll();
        return userList;
    }

    @RequestMapping(value = "/user/add", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public az.kanan.Test.blog.model.ResponseStatus addUser(@RequestBody User user) {
        System.out.println(user);

        boolean isRequestOkey = true;

        if (user.getNameAndSurname().equals(null) || user.getNameAndSurname().equals("")
                || user.getDesc().equals(null) || user.getDesc().equals("")) {
            isRequestOkey = false;
        }

        ResponseStatus responseStatus = new ResponseStatus();

        if (isRequestOkey) {
            User newUser = new User();
            newUser.setNameAndSurname(user.getNameAndSurname());
            newUser.setDesc(user.getDesc());
            User insertedUser = userService.addUser(newUser);
            if (insertedUser.getNameAndSurname().equals(newUser.getNameAndSurname())) {
                responseStatus.setStatus(200);
                responseStatus.setError(null);
            } else {
                responseStatus.setStatus(5);
                responseStatus.setError("Cannot add User");
            }
        } else {
            responseStatus.setStatus(5);
            responseStatus.setError("Fields are empty");
        }

        System.out.println(responseStatus);

        return responseStatus;
    }


}
