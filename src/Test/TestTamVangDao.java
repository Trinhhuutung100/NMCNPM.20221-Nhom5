/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Test;

import models.TamVang;
import Dao.TamVangDao;
import java.sql.Date;

/**
 *
 * @author Vo Hoang
 */
public class TestTamVangDao {
    public static void main(String[] args) {
        //TamVang tamVang = new TamVang();
        //tamVang.setMaGiayTamVang("khongco");
        //TamVangDao dao = new TamVangDao();
        //if (dao.findByMaGiayTamTru(tamVang)){
        //    System.out.println(tamVang);
        //}else {
        //    System.out.println("Loi");
        //}
        //TamVang tamVang1 = new TamVang();
        //tamVang1.setMaGiayTamVang("adfga");
        //String str = "2022-04-11";
        //Date date = Date.valueOf(str);
        //tamVang1.setDenNgay(date);
        //tamVang1.setTuNgay(date);
        //tamVang1.setIDNK(5);
        //tamVang1.setLyDo("afgrafdsg");
        //tamVang1.setNoiTamTru("asfgga");
        //TamVangDao dao = new TamVangDao();
        //if (dao.insert(tamVang1)){
        //    System.out.println("Success");
        //}else{
        //    System.out.println("Error");
        //}
        TamVang tamVang = new TamVang();
        tamVang.setMaGiayTamVang("khongco");
        tamVang.setIDNK(123);
        String str = "2022-09-25";
        Date date = Date.valueOf(str);
        tamVang.setTuNgay(date);
        tamVang.setDenNgay(date);
        tamVang.setLyDo("asrghsdfh");
        tamVang.setNoiTamTru("dfhsdfh");
        TamVangDao dao = new TamVangDao();
        if (dao.update(tamVang)){
            System.out.println("Success");
        }else{
            System.out.println("ERROR");
        }
    }
}
