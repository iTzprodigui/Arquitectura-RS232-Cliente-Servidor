package BD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author Carlos
 */
public class Conexion {
    // Declaramos la conexion a mysql
    private static Connection con;
    // Declaramos los datos de conexion a la bd
    private static final String driver = "com.mysql.cj.jdbc.Driver";
    private static final String host = "localhost";
    private static final String port = "3307";
    private static final String db = "arquitectura";
    private static final String user = "root";
    private static final String pass = "";
    private static final String url = "jdbc:mysql://" + host + ":" + port + "/" + db + "?user=" + user + "&password=" + pass + "&useSSL=false";
    
    public static Connection getConexion(){
        con=null; // Reseteamos a null la conexion a la bd
        
        try {
            Class.forName(driver);
            con=DriverManager.getConnection(url,user,pass);
        } catch (Exception e) {
            System.err.println("Error:" +e);
        }
        return con;
    }
    
    public static ResultSet getTabla(String consulta){
    Connection con = getConexion();
    Statement st;
    ResultSet datos = null;
    
        try {
            st = con.createStatement();
            datos = st.executeQuery(consulta);
        } catch (Exception e) {
            System.out.println("Hubo un error en la consulta");
        }
        return datos;
    }
    
    public static void main(String[] args) {
        getConexion();
    }
}
