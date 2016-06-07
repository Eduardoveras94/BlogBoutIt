/**
 * Created by Siclait on 30/05/2016.
 */
import javax.persistence.*;

public class User {
    // Attributes
    private String username;
    private String name;
    private String password;
    private boolean admin;
    private boolean author;

    // Constructors
    public User(String username) {
        this.username = username;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public User(String username, String name, String password, boolean admin, boolean author){

        this.username = username;
        this.name = name;
        this.password = password;
        this.admin = admin;
        this.author = author;
    }

    // Getters
    public String getUsername() {
        return username;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public boolean isAdmin() {
        return admin;
    }

    public boolean isAuthor() {
        return author;
    }
}
