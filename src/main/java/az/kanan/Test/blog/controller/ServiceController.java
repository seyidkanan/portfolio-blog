package az.kanan.Test.blog.controller;

import az.kanan.Test.blog.model.Post;
import az.kanan.Test.blog.util.Util;
import az.kanan.Test.blog.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import java.util.List;

/**
 * Created by Kanan on 7/14/2017.
 */
@Controller
public class ServiceController {

    @Autowired
    PostService postService;

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

}
