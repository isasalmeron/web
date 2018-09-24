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
                $('#tbDisponibilidade').dataTable({
                    "bSort": false, // Disable sorting
                    "bInfo": false,
                    "iDisplayLength": 8, //records per page
                    "sDom": "t<'row'<'col-md-6'i><'col-md-6'p>>",
                });
                document.getElementById('tbDisponibilidade').style.display='table';
            } );
        </script>
    </head>
    
    <body>
        <header>
            <a href = "index.jsp" title="Home" title="Home"> <img id="icone" src="imagens/icone.png"/> </a>  
            <h1>DIREnterprises</h1>
        </header>
        
        <div id="resultados">
            <%
                ArrayList<Livro> lista_livro = (ArrayList<Livro>) request.getAttribute("lista_livro");
                
                if(!lista_livro.isEmpty()){               
            %>
                    <table id="tbDisponibilidade">
                        <thead>
                            <tr>
                                <th class="colCategoria" id="tbtitulo">Categoria</th>
                                <th class = "tit">Título</th>
                                <th class="isbn">ISBN</th>
                                <th class="cod">Cod</th>
                                <th class="status">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                for(Livro l: lista_livro){
                            %>
                                    <tr>
                                        <td class="colCategoria"><%=l.getCategoria()%></td>
                                        <td><%=l.getTitulo()%></td>
                                        <td><%=l.getIsbn()%></td>
                                        <td><%=l.getCodigo()%></td>
                                        <td><%=l.getStatus()%></td>
                                    </tr>
                            <% 
                                }
                            %>    
                        </tbody>
                    </table>
        </div>
        
        <div id="botoes">
            <a id="quemsomos" href ="consultaDisponibilidade.jsp" title="Realizar nova consulta.">Voltar</a>
        </div>
            <% 
                }
                else{
            %>
            <div id="semResultado">
                Nenhum resultado encontrado! Tente uma nova consulta.
                <p>
                    <a id="btConsultar" href ="consultaDisponibilidade.jsp" title="Realizar nova consulta.">Nova Consulta</a>
                </p>
            </div>
            <%
                }
            %>
        <footer>
            <div style="color: yellow"> 
                
                <img src="imagens/icone.png" style=" height: 40px; margin-left: 20px; float: left "/>
                <a href="https://www.facebook.com/RepDiretoria/?fref=ts" target = "_blank"> <img src="imagens/fb.png" style=" height: 35px; margin-right: 25px; float:right "/> </a>
                <a id="quemsomos" href ="quemsomos.jsp" title="Desenvolvedores.">Quem somos</a>
            </div>            
        </footer>
    </body>
</html>
