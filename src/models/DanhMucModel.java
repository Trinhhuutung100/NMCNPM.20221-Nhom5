/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author trinh
 */
public class DanhMucModel {
    
    private JPanel jp;
    private JLabel jl;
    private String str;
    
    public DanhMucModel( String str, JPanel jp, JLabel jl){
        setStr(str);
        setJp(jp);
        setJl(jl);
    }

    public JPanel getJp() {
        return jp;
    }

    public void setJp(JPanel jp) {
        System.out.println("");
        this.jp = jp;
    }

    public JLabel getJl() {
        return jl;
    }

    public void setJl(JLabel jl) {
        this.jl = jl;
    }

    public String getStr() {
        return str;
    }

    public void setStr(String str) {
        this.str = str;
    }
    
}
