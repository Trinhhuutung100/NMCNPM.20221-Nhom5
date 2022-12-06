/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import models.DanhMucModel;
import views.*;

/**
 *
 * @author trinh
 */
public class MainController {
    
    private JFrame jf;
    private JPanel root;
    private List<DanhMucModel> list = new ArrayList<>();
    public MainController(JFrame jf, JPanel jp){
        this.jf = jf;
        this.root = jp;
    }
    
//    public void setView(){
//       root.add(new LoginPanel());
//       if(LoginPanel.isB()){
//           root.removeAll();
//           JPanel viewPanel = new TrangChuPanel();
//           root.add(viewPanel);
//           jf.add(root);
//           jf.setVisible(true);
//       }
//    }
    
    public void setEvent( List<DanhMucModel> list){
        this.list = list;
        list.forEach(item ->{
            item.getJp().setBackground(Color.white);
            item.getJl().addMouseListener(new DanhMucListener(item.getStr(),item.getJp(),item.getJl()));
        });
    }
    
    class DanhMucListener implements MouseListener {
        
        public String str;
        private JPanel jp;
        private JLabel jl;
        private JPanel temp;
        
        public DanhMucListener(String str, JPanel jp, JLabel jl){
            this.str = str;
            this.jp = jp;
            this.jl = jl;
        }
        
        @Override
        public void mouseClicked(MouseEvent e) {
            if(LoginPanel.isB()){
                switch (str) {
                    case "TrangChu":
                        temp = new TrangChuPanel();
                        break;
                    case "DongPhiVS":
                        temp = new DongPhiVSPanel();
                        break;
                    case "DongGop":
                        temp = new DongGopPanel();
                        break;
                     case "ThongKe":
                        temp = new ThongKePanel();
                        break;    
                    default:
                        throw new AssertionError();
                }
                list.forEach(item ->{
                    item.getJp().setBackground(Color.white);
                });
                jp.setBackground(Color.yellow);
                root.removeAll();
                root.setLayout(new FlowLayout(FlowLayout.CENTER));
                root.add(temp);
                jf.add(root);
                jf.setVisible(true);
            } else {
                JOptionPane.showMessageDialog(null, "Please login");
            }
     
        }

        @Override
        public void mousePressed(MouseEvent e) {
        }

        @Override
        public void mouseReleased(MouseEvent e) {
        }

        @Override
        public void mouseEntered(MouseEvent e) {
        }

        @Override
        public void mouseExited(MouseEvent e) {
        }
    }
    
}
