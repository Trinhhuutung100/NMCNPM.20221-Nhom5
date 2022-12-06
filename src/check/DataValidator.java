/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package check;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

/**
 *
 * @author Vo Hoang
 */
public class DataValidator {
    public static boolean checkEmpty (JPanel parent,JTextField textField){
        if (textField.getText().length()==0){
            JOptionPane.showMessageDialog(parent, "Texts ,which be marked with *, cannot be left mark!");
            return false;
        }
        return true;
    }
    public static boolean checkDate (JPanel parent ,JTextField textField){
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        sdf.setLenient(false);
        try{
            sdf.parse(textField.getText());
            return true;
        }catch(ParseException e){
            JOptionPane.showMessageDialog(parent, "This isn't a date!");
            return false;
        }
    }
    public static boolean checkNumber (JPanel parent, JTextField textField){
        Pattern pattern = Pattern.compile("^\\d{1,}$");
        Matcher matcher = pattern.matcher(textField.getText());
        if (matcher.matches()){
            return true;
        } else {
            JOptionPane.showMessageDialog(parent, "This isn't a number!", "ERROR",JOptionPane.ERROR);
            return false;
        }
    }
}
