package az.kanan.Test.blog.model;

import javax.persistence.*;

/**
 * Created by Kanan on 7/15/2017.
 */
@Entity
@Table(name = "post")
public class Post {
    @Id
    @Column(name = "post_id")
    private Long id;

    @Column(name = "title")
    private String title;

    @Column(name = "text")
    private String text;

    @Column(name = "date")
    private String date;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Transient
    private String shortText;

    public Post() {
    }

    public String getShortText() {
        return shortText;
    }

    public void setShortText(String shortText) {
        this.shortText = shortText;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", text='" + text + '\'' +
                ", date='" + date + '\'' +
                ", user=" + user +
                ", shortText='" + shortText + '\'' +
                '}';
    }
}
