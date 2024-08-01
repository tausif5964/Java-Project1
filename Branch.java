import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Branch extends JFrame implements ActionListener {
    JRadioButton Rb1=new JRadioButton("Artificial intelligence and Data Science");
    JRadioButton Rb2=new JRadioButton("Computer Science and Engineering");
    JRadioButton Rb3=new JRadioButton("Electrical Engineering");
    JRadioButton Rb4=new JRadioButton("Electronics and Telli-communication");
    JRadioButton Rb5=new JRadioButton("Mechanical Engineering");
    JRadioButton Rb6=new JRadioButton("Chemical Engineering");
    JRadioButton Rb7=new JRadioButton("Artificial Intelligence And ML");
    JButton b=new JButton("Submit");
    ButtonGroup bg=new ButtonGroup();
    Branch(){
        setSize(500,500);
        setLayout(null);
        setVisible(true);

        Rb1.setBounds(120,30,250,20);
        Rb2.setBounds(120,60,250,20);
        Rb3.setBounds(120,90,250,20);
        Rb4.setBounds(120,120,250,20);
        Rb5.setBounds(120,150,250,20);
        Rb6.setBounds(120,190,250,20);
        Rb7.setBounds(120,230,250,20);

        b.setBounds(180,260,100,20);

        bg.add(Rb1);bg.add(Rb2);bg.add(Rb3);bg.add(Rb4);
        bg.add(Rb5);bg.add(Rb6);bg.add(Rb7);

        add(Rb1);add(Rb2);add(Rb3);add(Rb4);
        add(Rb5);add(Rb6);add(Rb7);add(b);

        b.addActionListener(this) ;
    }
    public static void main(String[] args) {
        new Branch();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (Rb1.isSelected()){new Artificial();}
        else if (Rb2.isSelected()){ new CSE();}
        else if (Rb3.isSelected()){ new EXPO();}
        else if (Rb4.isSelected()){ new E_TC();}
        else if (Rb5.isSelected()){ new Mechanical();}
        else if (Rb6.isSelected()){ new Chemical();}
        else if (Rb7.isSelected()){ new AIML();}
    }
}

