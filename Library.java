import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Library extends JFrame {
    JScrollPane sp;
    Library(){
        String column[]={"book_id","book_name","author_name","branch","book_available"};
        String Data[][]= fetchTable();

        JTable tb =new JTable(Data,column);
        sp =new JScrollPane(tb);
        add(sp);
        setVisible(true);
        setSize(1300,300);
    }
    String [][] fetchTable(){
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","");
            Statement stmt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = stmt.executeQuery("select * from library;");

            int rowCount = 0;
            while (rs.next()) {
                rowCount++;
            }
            String[][] Data= new String[rowCount][5];
            rs.beforeFirst();
            int i=0;
            while (rs.next()){
                Data [i][0]= rs.getString("book_id");
                Data [i][1]=rs.getString("book_name");
                Data [i][2]= rs.getString("author_name");
                Data [i][3]=rs.getString("branch");
                Data [i][4]=rs.getString("books_available");
                i++;
            }
            rs.close();
            stmt.close();
            con.close();
            return Data;
        }catch (Exception e){
            e.printStackTrace();
            return new String[0][0];
        }
    }
    public static void main(String[] args) {new Library();}
}
