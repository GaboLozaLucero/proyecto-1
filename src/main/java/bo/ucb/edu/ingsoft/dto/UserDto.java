package bo.ucb.edu.ingsoft.dto;

import bo.ucb.edu.ingsoft.model.Transaction;
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Service;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PastOrPresent;
import java.util.Date;

@Service
public class UserDto {
    /*{
       "cityId": "4",
       "companyId": "2",
       "name": "Juan",
       "lastname": "Prueba"
       "phone": "77747774",
       "birthday: "1997-08-15"
       "email": "jprueba@gmail.com"
       "username": "juanprueba",
       "password": "prueba"
    }*/

    private Integer userId;
    @NotNull(message = "Empty field")
    private Integer cityId;
    @NotNull(message = "Empty field")
    private Integer companyId;

    @NotBlank(message = "Empty field")
    private String name;
    @NotBlank(message = "Empty field")
    private String lastname;
    @NotBlank(message = "Empty field")
    private String phone;
    @PastOrPresent(message = "Invalid date")
    private Date birthday;
    @NotBlank(message = "Empty field")
    private String email;
    @NotBlank(message = "Empty field")
    private String username;
    @NotBlank(message = "Empty field")
    private String password;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "UserDto{" +
                "userId=" + userId +
                ", cityId=" + cityId +
                ", companyId=" + companyId +
                ", name='" + name + '\'' +
                ", lastname='" + lastname + '\'' +
                ", phone='" + phone + '\'' +
                ", birthday=" + birthday +
                ", email='" + email + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
