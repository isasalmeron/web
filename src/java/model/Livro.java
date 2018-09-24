/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class Livro {
    private String codigo;
    private String titulo;
    private String dt_emprestimo;
    private String dt_devolucao;
    private String categoria;
    private String isbn;
    private String status;

    /**
     * @return the codigo
     */
    public String getCodigo() {
        return codigo;
    }

    /**
     * @param codigo the codigo to set
     */
    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    /**
     * @return the titulo
     */
    public String getTitulo() {
        return titulo;
    }

    /**
     * @param titulo the titulo to set
     */
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    /**
     * @return the dt_emprestimo
     */
    public String getDt_emprestimo() {
        return dt_emprestimo;
    }

    /**
     * @param dt_emprestimo the dt_emprestimo to set
     */
    public void setDt_emprestimo(String dt_emprestimo) {
        this.dt_emprestimo = dt_emprestimo;
    }

    /**
     * @return the dt_devolucao
     */
    public String getDt_devolucao() {
        return dt_devolucao;
    }

    /**
     * @param dt_devolucao the dt_devolucao to set
     */
    public void setDt_devolucao(String dt_devolucao) {
        this.dt_devolucao = dt_devolucao;
    }

    /**
     * @return the categoria
     */
    public String getCategoria() {
        return categoria;
    }

    /**
     * @param categoria the categoria to set
     */
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    /**
     * @return the isbn
     */
    public String getIsbn() {
        return isbn;
    }

    /**
     * @param isbn the isbn to set
     */
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
