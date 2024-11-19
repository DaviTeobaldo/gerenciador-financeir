import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.catalina.User;

import com.gerenciadorfinancas.util.DatabaseConnection;

public class UserDao {
    public static User getUserByEmail(String email) {
        User user = null;
        String query = "SELECT nome, email, telefone, cpf, conta, agencia FROM usuarios WHERE email = ?";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            
            stmt.setString(1, email);  // Passando o email como parâmetro para a consulta
            
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                // Criando o objeto User com os dados da consulta
                user = new User(
                    rs.getString("nome"),
                    rs.getString("email"),
                    rs.getString("telefone"),
                    rs.getString("cpf"),
                    rs.getString("conta"),
                    rs.getString("agencia")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return user;
    }
}
