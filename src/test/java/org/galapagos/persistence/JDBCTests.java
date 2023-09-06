package org.galapagos.persistence;

import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j;
import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;

import static org.springframework.test.util.AssertionErrors.fail;

@Log4j
public class JDBCTests {
    static {//초기화 블럭
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testConnection() {
        String url = "jdbc:mysql://localhost:3306/glory_db";
        try (Connection con = DriverManager.getConnection(url, "glory", "1234")) {
            log.info(con);
        } catch (Exception e) {
            fail(e.getMessage());
        }
    }
}

