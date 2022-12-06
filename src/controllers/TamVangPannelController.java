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
import java.awt.event.FocusEvent;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.text.ParseException;
import javax.swing.JOptionPane;
import java.awt.event.FocusListener;

/**
 *
 * @author Vo Hoang
 */
public class TamVangPannelController implements ActionListener,FocusListener {
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
            TamVang tamVang = new TamVang();
            tamVang.setMaGiayTamVang(tamVangPannel.txtMaGiayTamVang.getText());
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            sdf.setLenient(false);
            java.util.Date date;
            try {
                date = sdf.parse(tamVangPannel.txtTuNgay.getText());
                Date tuNgay = new Date(date.getTime());
                tamVang.setTuNgay(tuNgay);
            } catch (ParseException ex) {
                JOptionPane.showMessageDialog(tamVangPannel, "Sai tu ngay!","ERROR",JOptionPane.ERROR);
            }
            try {
                date = sdf.parse(tamVangPannel.txtDenNgay.getText());
                Date denNgay = new Date(date.getTime());
                tamVang.setTuNgay(denNgay);
            } catch (ParseException ex) {
                JOptionPane.showMessageDialog(tamVangPannel, "Sai den ngay!","ERROR",JOptionPane.ERROR);
            }
        }
        if (e.getSource()==tamVangPannel.btnNew){
            tamVangPannel.txtSearch.setText("");
            tamVangPannel.txtMaGiayTamVang.setText("");
            tamVangPannel.txtIDNK.setText("");
            tamVangPannel.txtTuNgay.setText("");
            tamVangPannel.txtDenNgay.setText("");
            tamVangPannel.atxtLyDo.setText("");
            tamVangPannel.txtNoiTamTru.setText("");
        }
    }

    @Override
    public void focusGained(FocusEvent e) {
    }

    @Override
    public void focusLost(FocusEvent e) {
    }
}
