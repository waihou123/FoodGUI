package login;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*; 

public class Login implements ActionListener {

    private static JLabel userLabel;
    private static JTextField userText;
    private static JLabel passwordLabel;
    private static JPasswordField passwordText;
    private static JButton button;
    private static JLabel response;
    private static JLabel output;
    private static JButton click;
    
    public static void main(String[] args) {    
    
        JFrame frame = new JFrame("Login");
        frame.setSize(350, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        JPanel panel = new JPanel();    
        frame.add(panel);
        placeComponents(panel);
        frame.setVisible(true);
    }
    private static void placeComponents(JPanel panel) {

        panel.setLayout(null);
        userLabel = new JLabel("User");
        userLabel.setBounds(10,20,80,25);
        panel.add(userLabel);

        userText = new JTextField(20);
        userText.setBounds(100,20,165,25);
        panel.add(userText);

        passwordLabel = new JLabel("Password");
        passwordLabel.setBounds(10,50,80,25);
        panel.add(passwordLabel);

        passwordText = new JPasswordField(20);
        passwordText.setBounds(100,50,165,25);
        panel.add(passwordText);


        button = new JButton("login");
        button.setBounds(10, 80, 80, 25);
        button.addActionListener(new Login());
        panel.add(button);
        
        response = new JLabel();
        response.setBounds(10,110,300,25);
        panel.add(response);
}
    
    @Override
    public void actionPerformed(ActionEvent e) {
    String user = userText.getText();
    String password = passwordText.getText();
    
    if (user.equals("Cheng") && password.equals("1234")) {
      response.setText("Login successful!");
      
        JFrame frame = new JFrame("Type of Food");
        frame.setSize(350, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        JPanel panel = new JPanel();    
        frame.add(panel);
        frame.setVisible(true);
        
        output = new JLabel("~~~~~~~~~~~~~~~~~~~~~FOOD~~~~~~~~~~~~~~~~~~~~~");
        output.setBounds(10, 40, 400, 25);
        panel.add(output);
        
        output = new JLabel("The balance of main nutrition of food are good for health.");
        output.setBounds(10, 40, 400, 25);
        panel.add(output);
        
        button = new JButton("Protein");
        button.setBounds(10, 230, 130, 25);
        button.addActionListener(new ProteinGUI());
        panel.add(button);
        
        button = new JButton("Fat");
        button.setBounds(10, 230, 130, 25);
        button.addActionListener(new FatGUI());
        panel.add(button);    
        
        button = new JButton("Carbohydrates");
        button.setBounds(10, 230, 130, 25);
        button.addActionListener(new CarbohydratesGUI());
        panel.add(button); 
        
        button = new JButton("Exit");
        button.setBounds(10, 250, 130, 25);
        button.addActionListener(new Exit());
        panel.add(button); 

    }
    else {
         response.setText("User or password wrong,please enter in again.");    }
         
  }
}
