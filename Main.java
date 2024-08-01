import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;



public class Main extends GUIExample implements ActionListener {
    JFrame H = new JFrame("College Details");
    JMenuBar BB;
    JMenu MM;
    JMenu TT;
    JMenu KK;
    JMenuItem About, Branch, Facilities, Library, Help, Feedback;
    JPanel backgroundPanel = new JPanel() {
        @Override
        protected void paintComponent(Graphics g) {
            super.paintComponent(g);
            // Load and draw your image here
            ImageIcon imageIcon = new ImageIcon("D:/pictures/Anjuman/HI animation.gif");
            Image image = imageIcon.getImage();
            g.drawImage(image, 0, 0, getWidth(), getHeight(), this);
        }
    };
    JLabel dateLabel; // Add a JLabel for displaying the date.
    Main() {
        H.setSize(500, 500);

        BB = new JMenuBar();
        H.setJMenuBar(BB);

        MM = new JMenu("INFO");
        TT = new JMenu("Others");
        KK = new JMenu("QUERY");

        BB.add(MM);
        BB.add(TT);
        BB.add(KK);

        About = new JMenuItem("ABOUT");
        Facilities = new JMenuItem("FACILITY");
        Branch = new JMenuItem("BRANCH");
        Library = new JMenuItem("LIBRARY");
        Help = new JMenuItem("HELP");
        Feedback = new JMenuItem("Feedback");

        MM.add(About);
        MM.addSeparator();
        MM.add(Facilities);
        MM.addSeparator();

        TT.add(Branch);
        TT.addSeparator();
        TT.add(Library);

        KK.add(Help);
        KK.addSeparator();
        KK.add(Feedback);

        H.setLayout(new BorderLayout());
        H.add(backgroundPanel, BorderLayout.CENTER);
        H.setVisible(true);
        H.setTitle("College Details");
        H.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        backgroundPanel.setLayout(null);
        backgroundPanel.setBounds(0, 0, 700, 320);
        H.add(backgroundPanel);
        TT.addSeparator();

        About.addActionListener(this);
        Branch.addActionListener(this);
        Facilities.addActionListener(this);
        Library.addActionListener(this);
        Help.addActionListener(this);
        Feedback.addActionListener(this);

        // Create a JLabel for displaying the date.
        dateLabel = new JLabel(getFormattedDate());

        // Add the dateLabel to the right side of the JMenuBar.
        BB.add(Box.createHorizontalGlue());
        BB.add(dateLabel);
    }
    private String getFormattedDate() {
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        return formatter.format(date);
    }
    public static void main(String[] args) {
        new GUIExample();
    }
    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == About) {
            new About();
        } else if (e.getSource() == Branch) {
            new Branch();
        } else if (e.getSource() == Facilities) {
            new Facilities();
        } else if (e.getSource() == Library) {
            new Library();
        } else if (e.getSource() == Help) {
            new HELPDESK();
        } else if (e.getSource() == Feedback) {
            new FEEDBACK();
        }
    }
    public class HELPDESK {
        HELPDESK() {
            JOptionPane.showMessageDialog(H, "Welcome to Our College Academic Portal Help Desk\n\n"
                            + "For Any Query or Assistance:\n\n" + "1. Academic Support:\n"
                            + "   - Email: academic.support@yourcollege.edu\n" + "   - Phone: +1 (123) 456-7890\n"
                            + "   - Office Hours: Monday to Friday, 9:00 AM to 5:00 PM\n\n" + "2. Scholarship Section:\n"
                            + "   - Email: scholarship@yourcollege.edu\n" + "   - Phone: +1 (123) 789-4560\n"
                            + "   - Office Hours: Monday to Friday, 10:00 AM to 4:00 PM\n\n" + "3. Technical Issues:\n"
                            + "   - Email: tech.support@yourcollege.edu\n" + "   - Phone: +1 (123) 555-6789\n"
                            + "   - Office Hours: Monday to Friday, 8:00 AM to 6:00 PM\n\n" + "4. General Inquiries:\n"
                            + "   - Email: info@yourcollege.edu\n" + "   - Phone: +1 (123) 123-4567\n"
                            + "   - Office Hours: Monday to Friday, 9:30 AM to 5:30 PM\n\n" + "5. Emergency Contact:\n"
                            + "   - Phone: +1 (123) 987-6543\n" + "   - Available 24/7\n\n"
                            + "We are here to assist you. Please feel free to contact us for any questions or concerns.",
                    "college HELP DESK", JOptionPane.INFORMATION_MESSAGE);
        }
    }
    public class About {
        About() {
            JOptionPane.showMessageDialog(H,
                    "Anjuman College of Engineering and Technology stands as a testament to excellence, shaping the engineers of tomorrow.\n\n"
                            + "Welcome to Anjuman College of Engineering and Technology, where innovation meets passion, and dreams take flight.\n\n"
                            + "With a vision for empowering young minds, Anjuman College of Engineering and Technology opens doors to a world of limitless possibilities.\n\n"
                            + "At Anjuman College of Engineering and Technology, we nurture creativity and curiosity, fostering a learning environment that inspires greatness.\n\n"
                            + "Our dedicated faculty goes beyond teaching; they mentor, guide, and ignite the spark of knowledge in every student.\n\n"
                            + "Anjuman College of Engineering and Technology's state-of-the-art facilities provide a platform for hands-on learning, driving students towards technological brilliance.\n\n"
                            + "Embracing diversity and collaboration, our campus cultivates a vibrant community of thinkers, innovators, and problem solvers.\n\n"
                            + "Through industry partnerships and cutting-edge research, Anjuman College of Engineering and Technology equips students with skills that shape industries and change the world.\n\n"
                            + "At the core of our values lies a commitment to ethics, integrity, and social responsibility, molding engineers with a heart for the greater good.\n\n"
                            + "Join us at Anjuman College of Engineering and Technology, and together, let's build a future that transcends boundaries and makes a lasting impact on the world.",
                    "Anjuman Welcomes you", JOptionPane.INFORMATION_MESSAGE);
        }
    }
    public class FEEDBACK {
        FEEDBACK() {
            // Create and display the feedback dialog
            String username = JOptionPane.showInputDialog(null, "Please enter your name:", "Username", JOptionPane.PLAIN_MESSAGE);
            String feedback = JOptionPane.showInputDialog(null, "Please provide your feedback:", "Feedback", JOptionPane.PLAIN_MESSAGE);

            if (username != null && !username.isEmpty() && feedback != null && !feedback.isEmpty()) {
                // Save the feedback to the database
                saveFeedbackToDatabase(username, feedback);

                JOptionPane.showMessageDialog(null, "Thank you for your feedback!\nWe appreciate your input.", "Feedback Submitted", JOptionPane.INFORMATION_MESSAGE);
            } else {
                JOptionPane.showMessageDialog(null, "Username or feedback was not provided.", "Feedback Not Submitted", JOptionPane.WARNING_MESSAGE);
            }
        }

        private void saveFeedbackToDatabase(String username, String feedback) {
            try {
                // Load the JDBC driver (if not already loaded)
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Create a database connection
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "");

                // SQL statement to insert feedback
                String sql = "INSERT INTO feedback (username, feedback_text) VALUES (?, ?)";

                // Create a prepared statement
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, username);
                preparedStatement.setString(2, feedback);

                // Execute the SQL statement
                preparedStatement.executeUpdate();

                // Close the prepared statement and connection
                preparedStatement.close();
                connection.close();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                // Handle database errors here
            }
        }
    }
}
