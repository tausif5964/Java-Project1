import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class EXPO implements ActionListener {
    JFrame M = new JFrame();
    private JTextArea ta;
    private JScrollPane sp;
    private JButton btnSyllabus;
    private JButton btnStaffDetails;

    // Create a panel for the main content area, which can be transparent to allow the background image to show through
    JPanel contentPanel = new JPanel(new BorderLayout()) {
        @Override
        protected void paintComponent(Graphics g) {
            super.paintComponent(g);
            ImageIcon imageIcon = new ImageIcon("D:/pictures/Anjuman/Electrical Engg.gif");
            Image image = imageIcon.getImage();

            // Get dimensions of the panel and draw the image scaled to fill the panel
            int width = getWidth();
            int height = getHeight();
            g.drawImage(image, 0, 0, width, height, this);
        }
    };

    public EXPO() {
        M.setTitle("Electrical Engineering");

        ta = new JTextArea(20, 60);
        ta.setEditable(false);
        sp = new JScrollPane(ta);

        btnSyllabus = new JButton("Syllabus");
        btnSyllabus.addActionListener(this);

        btnStaffDetails = new JButton("Staff Details");
        btnStaffDetails.addActionListener(this);

        // Button panel for organizing buttons
        JPanel buttonPanel = new JPanel(new GridLayout(1, 2, 10, 10));
        buttonPanel.add(btnSyllabus);
        buttonPanel.add(btnStaffDetails);
        buttonPanel.setOpaque(false); // Make button panel transparent to show the background image

        // Add components to the content panel
        contentPanel.add(sp, BorderLayout.CENTER);
        contentPanel.add(buttonPanel, BorderLayout.SOUTH);
        contentPanel.setOpaque(false); // Make the content panel transparent to show the background image

        // Add the content panel to the frame
        M.setContentPane(contentPanel);
        M.setSize(800, 600);
        M.setLocationRelativeTo(null);
        M.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        M.setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == btnSyllabus) {
            String column1[] = {"Branch Name", "Semester", "Syllabus Details"};
            String Data1[][] = getSyllabusForSemester();
            JTable tk = new JTable(Data1, column1);
            sp.setViewportView(tk);
        } else if (e.getSource() == btnStaffDetails) {
            String column[] = {"Employee ID", "Employee Name", "Education", "Working Branch", "Year of Experience"};
            String Data[][] = insertTable();
            JTable tb = new JTable(Data, column);
            sp.setViewportView(tb);
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(EXPO::new);
    }

    String[][] insertTable() {
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "");
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = stmt.executeQuery("SELECT * FROM Staff_detail WHERE Working_branch = 'Electrical Engineering';");

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
