import com.mysql.cj.protocol.x.XMessage;
import com.mysql.cj.protocol.x.XMessageBuilder;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;;

public class PersonalDetails implements ActionListener {
    JFrame T = new JFrame();
    JLabel k1 = new JLabel("   First Name");
    JLabel k2 = new JLabel("   Last Name");
    JLabel k3 = new JLabel("   Email");
    JLabel k4 = new JLabel("   Contact number");
    JLabel k5 = new JLabel("   Password");
    JLabel strengthLabel = new JLabel("   Check Password ");
    JTextField H1 = new JTextField();
    JTextField H2 = new JTextField();
    JTextField H3 = new JTextField("gamil.com");
    JTextField H4 = new JTextField();
    JPasswordField H5 = new JPasswordField();
    JPasswordField H6 = new JPasswordField();
    JLabel strengthIndicator = new JLabel("");
    JButton Click = new JButton("Submit");
    JButton clearButton = new JButton("Clear");
    JLabel J =new JLabel("   Gender");
    JLabel k6 =new JLabel("   Branch");JLabel k7 =new JLabel("   Year");
    String[] engineeringBranches = {"","AI&DS", "CSE", "EXPO", "Mech", "Civil", "Chemical", "Aerospace", "Biomedical", "Other"};
    JComboBox S_Branch=new JComboBox(engineeringBranches);
    String[] CurrentYear={"","1","2","3","4"};
    JComboBox S_year=new JComboBox(CurrentYear);
    String Gender[]={" ","Male","Female","Other"};
    JPanel backgroundPanel = new JPanel() {
        @Override
        protected void paintComponent(Graphics g) {
            super.paintComponent(g);
            // Load and draw your image here
            ImageIcon imageIcon = new ImageIcon("D:/pictures/Saved Pictures/rm373batch5-18.jpg");
            Image image = imageIcon.getImage();
            g.drawImage(image, 0, 0, getWidth(), getHeight(), this);
        }
    };    JComboBox CB=new JComboBox(Gender);
    PersonalDetails() {
        T.setSize(900, 900);
        T.setLayout(null);
        T.setTitle("Personal Details");
        Click.addActionListener(this);
        clearButton.addActionListener(this);
        T.setVisible(true);
        T.setBackground(Color.WHITE);

        k1.setBounds(50, 50, 150, 20);
        k2.setBounds(50, 80, 150, 20);
        k3.setBounds(50, 110, 150, 20);
        k4.setBounds(50, 140, 150, 20);
        k5.setBounds(50, 170, 150, 20);
        strengthLabel.setBounds(50, 200, 150, 20);
        J.setBounds(50,230,150,20);
        k6.setBounds(50,260,150,20);
        k7.setBounds(50,290,150,20);

        k1.setOpaque(true);
        k2.setOpaque(true);
        k3.setOpaque(true);
        k4.setOpaque(true);
        k5.setOpaque(true);
        k6.setOpaque(true);
        k7.setOpaque(true);
        J.setOpaque(true);
        strengthLabel.setOpaque(true);


       // Set the label's foreground (text) color to white
        k1.setForeground(Color.black);
        k2.setForeground(Color.black);
        k3.setForeground(Color.black);
        k4.setForeground(Color.black);
        k5.setForeground(Color.black);
        J.setForeground(Color.black);
        k6.setForeground(Color.black);
        k7.setForeground(Color.black);
        strengthLabel.setForeground(Color.black);


        Font labelFont = new Font("SansSerif", Font.BOLD, 12); // Adjust the font size as needed
        k1.setFont(labelFont);
        k2.setFont(labelFont);
        k3.setFont(labelFont);
        k4.setFont(labelFont);
        k5.setFont(labelFont);
        J.setFont(labelFont);
        k6.setFont(labelFont);
        k7.setFont(labelFont);
        strengthLabel.setFont(labelFont);

        H1.setBounds(220, 50, 150, 20);
        H2.setBounds(220, 80, 150, 20);
        H3.setBounds(220, 110, 150, 20);
        H4.setBounds(220, 140, 150, 20);
        H5.setBounds(220, 170, 150, 20);
        H6.setBounds(220, 200, 150, 20);
        S_Branch.setBounds(220, 260, 200, 20);
        T.add(S_Branch);
        S_year.setBounds(220,290,100,20);
        T.add(S_year);


        strengthIndicator.setBounds(380, 200, 100, 20);
        CB.setBounds(220,230,100,20);



        Click.setBounds(100, 330, 80, 20);
        clearButton.setBounds(200, 330, 80, 20);

        T.add(k1);T.add(k2);T.add(k3);T.add(k4);T.add(k5);T.add(J);T.add(k6);T.add(k7);

        T.add(H1);T.add(H2);T.add(H3);T.add(H4);T.add(H5);T.add(CB);

        T.add(Click);
        T.add(clearButton);

        T.add(H6);T.add(strengthLabel);

        T.add(strengthIndicator);
        backgroundPanel.setLayout(null);
        backgroundPanel.setBounds(0, 0, 900, 900);
        T.add(backgroundPanel);

        T.setVisible(true);
    }

    public static void main(String[] args) {
        new PersonalDetails();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        String firstName = H1.getText();
        String lastName = H2.getText();
        String contactNumber = H4.getText();
        String email = H3.getText();


        String password = String.valueOf(H6.getPassword());
        int strength = getPasswordStrength(password);

        switch (strength) {
            case 1:
                strengthIndicator.setText("Weak");
                strengthIndicator.setForeground(java.awt.Color.RED);
                strengthIndicator.setOpaque(true);
                strengthIndicator.setBackground(Color.black); // Set the background color
                break;
            case 2:
                strengthIndicator.setText("Medium");
                strengthIndicator.setForeground(java.awt.Color.ORANGE);
                strengthIndicator.setOpaque(true);
                strengthIndicator.setBackground(Color.black); // Set the background color
                break;
            case 3:
                strengthIndicator.setText("Strong");
                strengthIndicator.setForeground(java.awt.Color.GREEN);
                strengthIndicator.setOpaque(true);
                strengthIndicator.setBackground(Color.black); // Set the background color
                break;
            default:
                strengthIndicator.setText("");
                strengthIndicator.setOpaque(false); // Remove the background color
                break;
        }


        if (e.getSource() == Click) {
            if (firstName.isEmpty() || lastName.isEmpty() || contactNumber.isEmpty() || email.isEmpty() || CB.equals("") ||S_Branch.equals("")) {
                JOptionPane.showMessageDialog(T, "Please fill in all the details.", "Error", JOptionPane.ERROR_MESSAGE);
            } else {
                String selectedGender = CB.getSelectedItem().toString(); // Get selected gender from JComboBox
                String selectedBranch =S_Branch.getSelectedItem().toString();
                String selectedyear =S_year.getSelectedItem().toString();
                String info = "Name: " + firstName + " " + lastName
                        + "\nContact number: " + contactNumber
                        + "\nEmail: " + email
                        + "\nGender: " + selectedGender
                +"\nBranch: "+selectedBranch+"\nCurrent Year: "+selectedyear;;// Include selected gender in the info string

                try (
                        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","")){
                    String insertQuery="INSERT INTO student_info(Student_id,Student_F_name,Student_L_name,Student_Username,Student_password,Student_branch,Student_email,Student_year) VALUES(?,?,?,?,?,?,?,?) ";
                    PreparedStatement p1= con.prepareStatement(insertQuery);
                    p1.setString(1,selectedyear+"UG"+selectedBranch);
                    p1.setString(2,firstName);
                    p1.setString(3,lastName);
                    p1.setString(4,contactNumber);
                    p1.setString(5,password);
                    p1.setString(6,selectedBranch);
                    p1.setString(7,email);
                    p1.setString(8,selectedyear);
                    int rowsAffected = p1.executeUpdate();

                    if (rowsAffected > 0){
                        info +="\n\nDetails submitted to the database successfully.";}
                    else {
                        info += "\n\n Failed to submit details to the database.";
                    }

                }catch (SQLException ex){
                    info +="\n\nError connecting to the databse :\n"+ex.getLocalizedMessage();
                    ex.printStackTrace();}
                JOptionPane.showMessageDialog(T, info, "Your Details", JOptionPane.INFORMATION_MESSAGE);
                new GUIExample();
                T.setVisible(false);
            }
        } else if (e.getSource() == clearButton) {
            clearForm();
        }



    }
    private void clearForm() {
        k1.setText("");
        k2.setText("");k3.setText("");k4.setText("");k5.setText("");
        strengthLabel.setText("");
    }
    private int getPasswordStrength(String password) {
        // Password strength logic
        // You can implement your own password strength checking algorithm here.
        // For demonstration purposes, let's use a simple logic based on password length.
        int length = password.length();
        if (length < 8) {
            return 1; // Weak
        } else if (length < 12) {
            return 2; // Medium
        } else {
            return 3; // Strong
        }
    }
}