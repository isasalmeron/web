<%@page import="java.util.ArrayList"%>
<%@page import="model.Livro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>DIREnterprises</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagens/favicon.ico">

        <script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" language="javascript" src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" language="javascript" src="//cdn.datatables.net/plug-ins/1.10.7/integration/foundation/dataTables.foundation.js"></script>

        <script type="text/javascript" charset="utf-8">
            $(document).ready(function() {
                $('#tbHistorico').dataTable({
                    "bSort": false, // Disable sorting
                    "bInfo": false,
                    "iDisplayLength": 8, //records per page
                    "sDom": "t<'row'<'col-md-6'i><'col-md-6'p>>",
                });
                document.getElementById('tbHistorico').style.display='table';
            } );
        </script>
    </head>
    
    <body>
        <header>
            <a href = "index.jsp" title="Home"> <img id="icone" src="imagens/icone.png"/> </a>  
            <h1>DIREnterprises</h1>
        </header>
        
        <div id="resultados">
            <%
                ArrayList<Livro> lista_livro = (ArrayList<Livro>) request.getAttribute("lista_livro");
                
                if(!lista_livro.isEmpty()){               
            %>
                    <table id="tbHistorico">
                        <thead>
                            <tr>
                                <th class="cod" id="tbtitulo">Cod</th>
                                <th class="colTitulo">Título</th>
                                <th>Data de Empréstimo</th>
                                <th id="dtDevolucao">Data de Devolução</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                for(Livro l: lista_livro){
                            %>
                                    <tr>
                                        <td><%=l.getCodigo()%></td>
                                        <td class="colTitulo"><%=l.getTitulo()%></td>
                                        <td><%=l.getDt_emprestimo()%></td>
                                        <td><%=l.getDt_devolucao()%></td>
                                    </tr>
                            <% 
                                }
                            %>
                        </tbody>
                    </table>
        </div>
        
        <div id="botoes">
            <a id="quemsomos" href ="consultaHistorico.jsp" title="Realizar nova consulta.">Voltar</a>
        </div>
                        
            <% 
                }
                else{
            %>
            <div id="semResultado">
                Nenhum resultado encontrado! Tente uma nova consulta.
                <p>
                    <a id="btConsultar" href ="consultaHistorico.jsp" title="Realizar nova consulta." style="width: 90%">Nova consulta</a>
                </p>
            </div>
            <%
                }
            %>
        <footer>
            <div style="color: yellow"> 
                
                <img src="imagens/icone.png" style=" height: 40px; margin-left: 20px; float: left "/>
                <a href="https://www.facebook.com/RepDiretoria/?fref=ts" target = "_blank"> <img src="imagens/fb.png" style=" height: 35px; margin-right: 25px; float:right "/> </a>
                <a id="quemsomos" href ="quemsomos.jsp" title="Desenvolvedores">Quem somos</a>
            </div>            
        </footer>
    </body>
</html>
