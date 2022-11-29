/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Test;

import models.TamVang;
import Dao.TamVangDao;

/**
 *
 * @author Vo Hoang
 */
public class TestTamVangDao {
    public static void main(String[] args) {
        TamVang tamVang = new TamVang();
        tamVang.setMaGiayTamVang("khongco");
        TamVangDao dao = new TamVangDao();
        if (dao.findByMaGiayTamTru(tamVang)){
            System.out.println(tamVang);
        }else {
            System.out.println("Loi");
        }
    }
}
