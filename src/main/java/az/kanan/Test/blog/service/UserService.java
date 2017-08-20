package az.kanan.Test.blog.service;

import az.kanan.Test.blog.db.UserDao;
import az.kanan.Test.blog.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Kanan on 8/19/2017.
 */
@Service
public class UserService {

    @Autowired
    UserDao userDao;

    public List<User> findAll() {
        List<User> userList = new ArrayList<>();
        for (User user : userDao.findAll()) {
            userList.add(user);
        }
        return userList;
    }

    public User addUser(User user) {
        return userDao.save(user);
    }


    public User findUserById(Long id) {
        return userDao.findOne(id);
    }

}
