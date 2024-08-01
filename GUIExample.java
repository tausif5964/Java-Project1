import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class GUIExample implements ActionListener {
    JFrame f = new JFrame();
    JLabel name = new JLabel("Name:");
    JLabel pass = new JLabel("Password");
    JTextField n = new JTextField();
    JPasswordField p = new JPasswordField(); // Use JPasswordField for password input
    JButton b = new JButton("Login");
    JButton Sign = new JButton("New User");
    Connection connection;

    public GUIExample() {
        // Initialize database connection
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        name.setBounds(120, 50, 80, 20);
        pass.setBounds(120, 80, 100, 20);
        n.setBounds(230, 50, 120, 20);
        p.setBounds(230, 80, 120, 20);
        Sign.setBounds(140, 190, 100, 20);
        b.setBounds(140, 150, 100, 20);
        f.add(name);
        f.add(pass);
        f.add(n);
        f.add(p);
        f.add(b);
        f.add(Sign);
        b.addActionListener(this);
        Sign.addActionListener(this);
        f.setTitle("Logging Form");
        f.setSize(600, 600);

        // Load and set the background image directly on the frame
        ImageIcon imageIcon = new ImageIcon("D:/pictures/Anjuman/Robotic.gif");
        JLabel backgroundLabel = new JLabel(imageIcon);
        backgroundLabel.setBounds(0, 0, 600, 600);
        f.add(backgroundLabel);

        f.setLayout(null);
        f.setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        String uname = n.getText();
        String password = new String(p.getPassword()); // Get password as a string

        if (e.getSource() == Sign) {
            new PersonalDetails();
        } else {
            // Check login credentials from the database
            try {
                PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM student_info WHERE Student_Username = ? AND Student_password = ?");
                preparedStatement.setString(1, uname);
                preparedStatement.setString(2, password);
                ResultSet resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    JOptionPane.showMessageDialog(f, "Login successful");
                    f.removeAll();
                    new Main();
                } else {JOptionPane.showMessageDialog(f, "Invalid login credentials", "Warning", JOptionPane.WARNING_MESSAGE);}}
            catch (SQLException ex) {ex.printStackTrace();}}}
    public static void main(String[] args) {new GUIExample();}}
