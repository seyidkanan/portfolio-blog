package az.kanan.Test.blog.db;

import az.kanan.Test.blog.model.Post;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;

/**
 * Created by Kanan on 7/15/2017.
 */
@Transactional
public interface PostDao extends CrudRepository<Post, Long> {

    Post findById(Long id);

}
