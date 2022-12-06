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
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, tamVang.getMaGiayTamVang());
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()){
                    tamVang.setIDNK(rs.getInt("ID_NK"));
                    tamVang.setNoiTamTru(rs.getString("NoiTamTru"));
                    tamVang.setTuNgay(rs.getDate("TuNgay"));
                    tamVang.setDenNgay(rs.getDate("DenNgay"));
                    tamVang.setLyDo(rs.getString("LyDo"));
                }
            }
            return true;
        } catch (SQLException e){
            e.printStackTrace();
        }
        JDBCUtil.closeConnection(connection);
        return false;
    }
    public boolean update (TamVang tamVang){
        Connection connection = JDBCUtil.getConnection();
        String sql = "UPDATE tam_vang SET ID_NK =?, NoiTamTru =?, TuNgay =?, DenNgay =?, LyDo=? WHERE MaGiayTamVang = ?";
        try {
            int result;
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setInt(1, tamVang.getIDNK());
                preparedStatement.setString(2, tamVang.getNoiTamTru());
                preparedStatement.setDate(3, tamVang.getTuNgay());
                preparedStatement.setDate(4, tamVang.getDenNgay());
                preparedStatement.setString(5, tamVang.getLyDo());
                preparedStatement.setString(6, tamVang.getMaGiayTamVang());
                result = preparedStatement.executeUpdate();
            }
            return result >0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        JDBCUtil.closeConnection(connection);
        return false;
    }
    public boolean insert (TamVang tamVang){
        Connection connection = JDBCUtil.getConnection();
        String sql = "INSERT INTO tam_vang (ID_NK, MaGiayTamVang, NoiTamTru, TuNgay, DenNgay, LyDo) "
                +"VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, tamVang.getIDNK());
            preparedStatement.setString(2, tamVang.getMaGiayTamVang());
            preparedStatement.setString(3, tamVang.getNoiTamTru());
            preparedStatement.setDate(4, tamVang.getTuNgay());
            preparedStatement.setDate(5, tamVang.getDenNgay());
            preparedStatement.setString(6, tamVang.getLyDo());
            return preparedStatement.executeUpdate()>0;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
