package org.galapagos.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {
    private String userid;
    private String password;
    private String password2;
    private String email;
    private List<String> hobbies;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthDate;
}
