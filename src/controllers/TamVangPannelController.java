/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import views.TamVangPanel;
import models.TamVang;
import Dao.TamVangDao;
import javax.swing.JOptionPane;

/**
 *
 * @author Vo Hoang
 */
public class TamVangPannelController implements ActionListener{
    private TamVangPanel tamVangPannel;
    public TamVangPannelController(TamVangPanel tamVangPanel){
        this.tamVangPannel = tamVangPanel;
    }
    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == tamVangPannel.btnSearch){
            TamVang tamVang = new TamVang();
            tamVang.setMaGiayTamVang(tamVangPannel.txtSearch.getText());
            TamVangDao dao = new TamVangDao();
            if (dao.findByMaGiayTamTru(tamVang)){
                tamVangPannel.txtMaGiayTamVang.setText(tamVang.getMaGiayTamVang());
                tamVangPannel.txtIDNK.setText(String.valueOf(tamVang.getIDNK()));
                tamVangPannel.txtNoiTamTru.setText(tamVang.getNoiTamTru());
                tamVangPannel.txtTuNgay.setText(tamVang.getTuNgay().toString());
                tamVangPannel.txtDenNgay.setText(tamVang.getDenNgay().toString());
                tamVangPannel.atxtLyDo.setText(tamVang.getLyDo());
            }else{
                JOptionPane.showMessageDialog(tamVangPannel, "Khong tim thay!");
            }
        }
        if (e.getSource()== tamVangPannel.btnBack){
            
        }
        if (e.getSource()==tamVangPannel.btnSave){
            
        }
    }
}
