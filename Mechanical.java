import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
public class Mechanical implements ActionListener {
    JFrame M = new JFrame();
    private JTextArea ta;
    private JScrollPane sp;
    private JButton btnSyllabus;
    private JButton btnStaffDetails;
    JPanel backgroundPanel = new JPanel() {
        @Override
        protected void paintComponent(Graphics g) {
            super.paintComponent(g);
            // Load and draw your image here
            ImageIcon imageIcon = new ImageIcon("D:/pictures/Anjuman/image icon6.gif");
            Image image = imageIcon.getImage();
            g.drawImage(image, 0, 0, 700, 320,this);
        }
    };
    public Mechanical() {
        M.setTitle("Mechanical Engineering");

        ta = new JTextArea(20, 60);
        ta.setEditable(false);
        sp = new JScrollPane(ta);

        btnSyllabus = new JButton("Syllabus");
        btnSyllabus.addActionListener(this);

        btnStaffDetails = new JButton("Staff Details");
        btnStaffDetails.addActionListener(this);

        JPanel buttonPanel = new JPanel(new GridLayout(1, 2, 10, 10));
        buttonPanel.add(btnSyllabus);
        buttonPanel.add(btnStaffDetails);

        M.setLayout(new BorderLayout());
        M.add(sp, BorderLayout.CENTER);
        M.add(buttonPanel, BorderLayout.SOUTH);
        M.setBackground(Color.black);
        M.pack();
        M.setLocationRelativeTo(null);

        backgroundPanel.setLayout(null);
        backgroundPanel.setBounds(0, 0, 700, 320);
        ta.add(backgroundPanel);

        M.setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == btnSyllabus) {
            String column1[] = {"Employee_id", "Employee_name", "Education", "Working_branch", "year_of_experience"};
            String Data1[][] = getSyllabusForSemester();

            JTable tk = new JTable(Data1, column1);
            sp.setViewportView(tk);
        } else if (e.getSource() == btnStaffDetails) {
            String column[] = {"Employee_id", "Employee_name", "Education", "Working_branch", "year_of_experience"};
            String Data[][] = insertTable();

            JTable tb = new JTable(Data, column);
            sp.setViewportView(tb); // Set the table as the view of the scroll pane
        }
    }

    public static void main(String[] args) {
        new Mechanical();
    }

    String[][] insertTable() {
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "");
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = stmt.executeQuery("SELECT * FROM Staff_detail WHERE Working_branch = 'Mechanical Engineering';");

            int rowCount = 0;
            while (rs.next()) {
                rowCount++;
            }
            String[][] Data = new String[rowCount][5];
            rs.beforeFirst();
            int i = 0;
            while (rs.next()) {
                Data[i][0] = rs.getString("Employee_id");
                Data[i][1] = rs.getString("Employee_name");
                Data[i][2] = rs.getString("Education");
                Data[i][3] = rs.getString("Working_branch");
                Data[i][4] = String.valueOf(rs.getInt("year_of_experience"));
                i++;
            }
            rs.close();
            stmt.close();
            con.close();
            return Data;
        } catch (Exception e) {
            e.printStackTrace();
            return new String[0][0];
        }
    }
    String[][] getSyllabusForSemester() {
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "");
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = stmt.executeQuery("SELECT * FROM Syllabus WHERE branch_name = 'Electrical Engineering';");

            int rowCount = 0;
            while (rs.next()) {
                rowCount++;
            }
            String[][] Data1 = new String[rowCount][3];
            rs.beforeFirst();
            int i = 0;
            while (rs.next()) {
                Data1[i][0] = rs.getString("branch_name");
                Data1[i][1] = rs.getString("semester");
                Data1[i][2] = rs.getString("syllabus_details");
                i++;
            }
            rs.close();
            stmt.close();
            con.close();
            return Data1;
        } catch (Exception e) {
            e.printStackTrace();
            return new String[0][0];
        }
    }

}
