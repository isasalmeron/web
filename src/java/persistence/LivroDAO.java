/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.Connection;
import java.sql.*;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import model.Livro;
import java.util.ArrayList;

public class LivroDAO {
    private Connection connection;
    
    public LivroDAO() throws DAOException{
        this.connection = ConnectionFactory.getConnection();
    }
  
    public ArrayList buscarHistorico(String dt_inicio, String dt_fim) throws SQLException{
        ArrayList<Livro> lista_livro = new ArrayList<Livro>();
        ResultSet rs;
        PreparedStatement stmt;
        String sql;
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        
        df.setLenient(false);
        sql = "SELECT * FROM livros WHERE dt_emprestimo >= '" + dt_inicio + "' AND dt_devolucao <= '" + dt_fim + "' ORDER BY dt_emprestimo;";

        stmt = connection.prepareStatement(sql);
        rs = stmt.executeQuery();
        
        while(rs.next()){
            Livro l = new Livro();
            
            l.setTitulo(rs.getString("titulo"));
            l.setCodigo(""+rs.getInt("codigo"));
            l.setDt_emprestimo(df.format(rs.getDate("dt_emprestimo")));
            l.setDt_devolucao(df.format(rs.getDate("dt_devolucao")));
            
            lista_livro.add(l);
        }
        
        return lista_livro;
    }
    
    public ArrayList buscarDisponibilidade(Livro l, String ordenacao) throws SQLException{
        ArrayList<Livro> lista_livro = new ArrayList<Livro>();
        ResultSet rs;
        PreparedStatement stmt;
        String sql;
               
        sql = "SELECT * FROM livros WHERE categoria LIKE '"; 
        if(l.getCategoria().equals("")){
            sql += "%";
        }
        else{
            sql += "%" + l.getCategoria() + "%";
        }

        sql += "' AND titulo LIKE '";
        if(l.getTitulo().equals("")){
            sql += "%";
        }
        else{
            sql += "%" + l.getTitulo() + "%";
        }

        sql += "' AND isbn LIKE '"; 
        if(l.getIsbn().equals("")){
            sql += "%";
        }
        else{
            sql += l.getIsbn();
        }

        sql += "'";
        if(!l.getCodigo().equals("")){
            sql += " AND codigo = ";
            sql += l.getCodigo();
        }
        
        sql += "ORDER BY " + ordenacao;
       
        stmt = connection.prepareStatement(sql);
        rs = stmt.executeQuery();
        
        while(rs.next()){
            Livro liv = new Livro();
            
            liv.setCategoria(rs.getString("categoria"));
            liv.setTitulo(rs.getString("titulo"));
            liv.setIsbn(rs.getString("isbn"));
            liv.setCodigo(""+rs.getInt("codigo"));
            liv.setStatus(rs.getString("status"));
            
            lista_livro.add(liv);
        }
        
        return lista_livro;
    }
}