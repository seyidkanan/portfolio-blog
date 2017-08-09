package az.kanan.Test.blog.service;

import az.kanan.Test.blog.model.Post;
import az.kanan.Test.blog.db.PostDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Kanan on 7/15/2017.
 */
@Service
public class PostService {

    @Autowired
    private PostDao postDao;

    public List<Post> findAll() {
        List<Post> postList = new ArrayList<>();
        for (Post post : postDao.findAll()) {
            postList.add(post);
        }
        return postList;
    }

    public Post findPostById(Long id) {
        return postDao.findById(id);
    }

}
