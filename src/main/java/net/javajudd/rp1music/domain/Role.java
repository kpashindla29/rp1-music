package net.javajudd.rp1music.domain;

public enum Role {
    Admin("Admin"),
    User("User");

    String name;

    Role(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return name;
    }
}
