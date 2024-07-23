package net.javajudd.rp1music.domain;

import javax.persistence.*;

import java.util.ArrayList;
import java.util.List;

import static javax.persistence.FetchType.LAZY;

@Entity
public class Song {

    @Id
    private long id;

    @Column(unique = true, nullable = false)
    private String guid;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private long length;

    @ManyToOne(fetch = LAZY)
    private Release release;

    @ManyToMany(mappedBy = "songs")
    private List<User> users = new ArrayList<>();

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getLength() {
        return length;
    }

    public void setLength(long length) {
        this.length = length;
    }

    public Release getRelease() {
        return release;
    }

    public void setRelease(Release release) {
        this.release = release;
    }

    public List<User> getUsers() {
        return users;
    }
}
