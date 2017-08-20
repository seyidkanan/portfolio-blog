package az.kanan.Test.blog.model;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by Kanan on 7/15/2017.
 */
@Entity
@Table(name = "user_info")
public class User {
    @Id
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column(name = "user_id")
    private Long id;

    @Column(name = "user_name_surname")
    @NotNull
    private String nameAndSurname;

    @Column(name = "user_desc")
    @NotNull
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
