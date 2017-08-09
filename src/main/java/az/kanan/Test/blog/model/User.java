package az.kanan.Test.blog.model;

import javax.persistence.*;

/**
 * Created by Kanan on 7/15/2017.
 */
@Entity
@Table(name = "user_info")
public class User {
    @Id
    @Column(name = "user_id")
    private Long id;

    @Column(name = "user_name_surname")
    private String nameAndSurname;

    @Column(name = "user_desc")
    private String desc;

    public User() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNameAndSurname() {
        return nameAndSurname;
    }

    public void setNameAndSurname(String nameAndSurname) {
        this.nameAndSurname = nameAndSurname;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", nameAndSurname='" + nameAndSurname + '\'' +
                ", desc='" + desc + '\'' +
                '}';
    }
}
