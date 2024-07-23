package net.javajudd.rp1music.security;

import org.junit.Before;
import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.notNullValue;
import static org.junit.Assert.assertThat;

public class PasswordEncoderTest {

    private PasswordEncoder passwordEncoder;

    @Before
    public void setup() {
        passwordEncoder = new BCryptPasswordEncoder();
    }

    @Test
    public void testPasswordEncoding() {
        String encodedPassword = passwordEncoder.encode("password1");

        assertThat(encodedPassword, is(notNullValue()));
        System.out.println("Password is : " + encodedPassword);
    }
}
