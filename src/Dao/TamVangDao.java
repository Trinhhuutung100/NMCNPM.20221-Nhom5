/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import db.JDBCUtil;
import models.TamVang;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

/**
 *
 * @author Vo Hoang
 */
public class TamVangDao {
    //tim 1 ban tam vang bang id
    public boolean findByMaGiayTamTru(TamVang tamVang){
        Connection connection = JDBCUtil.getConnection();
        try {
            String sql = "SELECT*FROM tam_vang Where MaGiayTamVang = ? ";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, tamVang.getMaGiayTamVang());
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                tamVang.setIDNK(rs.getInt("ID_NK"));
                tamVang.setNoiTamTru(rs.getString("NoiTamTru"));
                tamVang.setTuNgay(rs.getDate("TuNgay"));
                tamVang.setDenNgay(rs.getDate("DenNgay"));
                tamVang.setLyDo(rs.getString("LyDo"));
                return true;
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        JDBCUtil.closeConnection(connection);
        return false;
    }
}
