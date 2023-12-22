package dto;

public class User {
    private int id;
    private String name;
    private String password;

    // 기본 생성자
    public User() {}

    // 매개변수를 가진 생성자
    public User(String name, String password) {
        this.name = name;
        this.password = password;
    }

    // id의 getter와 setter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // name의 getter와 setter
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    // password의 getter와 setter
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
