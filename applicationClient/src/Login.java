

import java.awt.Color;
import java.awt.Font;
import java.awt.Label;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.GroupLayout;
import javax.swing.GroupLayout.Alignment;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.SpringLayout;


public class Login extends JDialog {
	public String usr;
	public String pswr;

	private static final long serialVersionUID = 1L;
	JTextField textField_1;
	JPasswordField passwordField;

    JButton btnConn;
	public static void main(String[] args) {
		try {
			Login dialog = new Login();
			dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
			dialog.setVisible(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Login() {
		
		setForeground(new Color(255, 69, 0));
		setFont(new Font("DFKai-SB", Font.BOLD, 12));
		setTitle("Application Client");
		setBounds(100, 100, 450, 300);
		
		JPanel panel = new JPanel();
		panel.setBackground(new Color(240, 248, 255));
		GroupLayout groupLayout = new GroupLayout(getContentPane());
		groupLayout.setHorizontalGroup(
			groupLayout.createParallelGroup(Alignment.LEADING)
				.addGroup(groupLayout.createSequentialGroup()
					.addComponent(panel, GroupLayout.DEFAULT_SIZE, 428, Short.MAX_VALUE)
					.addContainerGap())
		);
		groupLayout.setVerticalGroup(
			groupLayout.createParallelGroup(Alignment.LEADING)
				.addGroup(Alignment.TRAILING, groupLayout.createSequentialGroup()
					.addComponent(panel, GroupLayout.PREFERRED_SIZE, 262, GroupLayout.PREFERRED_SIZE)
					.addContainerGap(GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
		);
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		
		btnConn = new JButton("Connecter");		
		JButton btnAnn = new JButton("Annuler");
		SpringLayout sl_panel = new SpringLayout();
		sl_panel.putConstraint(SpringLayout.NORTH, btnConn, 1, SpringLayout.NORTH, btnAnn);
		sl_panel.putConstraint(SpringLayout.EAST, btnAnn, 0, SpringLayout.EAST, textField_1);
		sl_panel.putConstraint(SpringLayout.SOUTH, textField_1, -188, SpringLayout.SOUTH, panel);
		sl_panel.putConstraint(SpringLayout.EAST, textField_1, -26, SpringLayout.EAST, panel);
		panel.setLayout(sl_panel);
		panel.add(textField_1);
		panel.add(btnConn);
		panel.add(btnAnn);
		
		Label label = new Label("User");
		sl_panel.putConstraint(SpringLayout.WEST, btnConn, 0, SpringLayout.WEST, label);
		sl_panel.putConstraint(SpringLayout.NORTH, label, 0, SpringLayout.NORTH, textField_1);
		label.setForeground(Color.BLUE);
		label.setFont(new Font("French Script MT", Font.BOLD, 12));
		panel.add(label);
		
		Label label_1 = new Label("PassWord");
		sl_panel.putConstraint(SpringLayout.WEST, label, 0, SpringLayout.WEST, label_1);
		label_1.setForeground(Color.BLUE);
		label_1.setFont(new Font("Colonna MT", Font.BOLD, 12));
		panel.add(label_1);
		
		passwordField = new JPasswordField();
		sl_panel.putConstraint(SpringLayout.WEST, passwordField, 268, SpringLayout.WEST, panel);
		sl_panel.putConstraint(SpringLayout.SOUTH, passwordField, -154, SpringLayout.SOUTH, panel);
		sl_panel.putConstraint(SpringLayout.EAST, label_1, -29, SpringLayout.WEST, passwordField);
		sl_panel.putConstraint(SpringLayout.NORTH, btnAnn, 56, SpringLayout.SOUTH, passwordField);
		sl_panel.putConstraint(SpringLayout.NORTH, passwordField, 14, SpringLayout.SOUTH, textField_1);
		sl_panel.putConstraint(SpringLayout.EAST, passwordField, -10, SpringLayout.EAST, panel);
		sl_panel.putConstraint(SpringLayout.SOUTH, label_1, 0, SpringLayout.SOUTH, passwordField);
		sl_panel.putConstraint(SpringLayout.WEST, textField_1, 0, SpringLayout.WEST, passwordField);
		panel.add(passwordField);
		
		Label label_2 = new Label("Page de connexion");
		sl_panel.putConstraint(SpringLayout.NORTH, label_2, 28, SpringLayout.NORTH, panel);
		sl_panel.putConstraint(SpringLayout.SOUTH, label_2, -214, SpringLayout.SOUTH, panel);
		sl_panel.putConstraint(SpringLayout.EAST, label_2, -152, SpringLayout.EAST, panel);
		label_2.setForeground(Color.BLUE);
		label_2.setFont(new Font("Bradley Hand ITC", Font.BOLD, 16));
		panel.add(label_2);
		
		JPanel panel_1 = new JPanel();
		sl_panel.putConstraint(SpringLayout.NORTH, panel_1, 10, SpringLayout.NORTH, panel);
		sl_panel.putConstraint(SpringLayout.SOUTH, panel_1, 232, SpringLayout.NORTH, panel);
		panel.add(panel_1);
		getContentPane().setLayout(groupLayout);

		
		btnAnn.addActionListener(new ActionListener(){
			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				dispose();
			}
		});
		
		this.setLocationRelativeTo(null);
		
		
		JMenuItem mntmAfficher = new JMenuItem("Afficher");
		mntmAfficher.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				//new afficheConnec();
			}
		});
		
	}
}
