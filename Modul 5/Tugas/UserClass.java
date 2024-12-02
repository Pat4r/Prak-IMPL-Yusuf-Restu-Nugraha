public class UserClass {
    // Properti kelas dengan nama variabel yang deskriptif
    protected String username;
    protected String password;

    // Konstruktor untuk inisialisasi
    public UserClass(String username, String password) {
        this.username = username;
        this.password = password;
    }

    // Metode untuk menyimpan username dan password
    public void storeCredentials(String username, String password) {
        this.username = username;
        this.password = password;
    }

    // Getter untuk username
    public String getUsername() {
        return username;
    }

    // Setter untuk username
    public void setUsername(String username) {
        this.username = username;
    }

    // Getter untuk password
    public String getPassword() {
        return password;
    }

    // Setter untuk password
    public void setPassword(String password) {
        this.password = password;
    }
}