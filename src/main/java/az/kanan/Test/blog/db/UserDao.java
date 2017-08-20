package az.kanan.Test.blog.db;

import az.kanan.Test.blog.model.Post;
import az.kanan.Test.blog.model.User;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;

/**
 * Created by Kanan on 8/19/2017.
 */
@Transactional
public interface UserDao extends CrudRepository<User, Long> {


}
