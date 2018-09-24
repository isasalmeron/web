<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>DIREnterprises</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagens/favicon.ico">     
    </head>

    <body>
        <header>
            <a href = "index.jsp" title="Home"> <img id="icone" src="imagens/icone.png"/> </a>  
            <h1>DIREnterprises</h1>
        </header>
        
        <section class="introBusca">
            Para consultar o histórico de livros emprestados em um determinado período, selecione a data de início e término para a exibição dos dados.
        </section>
        
        <form class="formBusca" method="post" action="Historico">
            <p>
                <label for="dtInicio">Data Início: </label>
                <input id="dtInicio" name="dtInicio" type="date" required="required" title="Informe uma data. (dd/mm/aaaa)" placeholder="ex.: dd/mm/aaaa" pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$">   
            </p>
            <p>
                <label for="dtFim">Data Fim: &nbsp;&nbsp;</label>
                <input id="dtFim" name="dtFim" type="date" required="required" title="Informe uma data. (dd/mm/aaaa)" placeholder="ex.: dd/mm/aaaa" pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$">
            </p>            
            <p>
                <input id="btConsultar" value="Consultar" type="submit" title="Consultar histórico de livros.">
            </p>
        </form>

        <footer>
            <div style="color: yellow"> 
                
                <img src="imagens/icone.png" style=" height: 40px; margin-left: 20px; float: left "/>
                <a href="https://www.facebook.com/RepDiretoria/?fref=ts" target = "_blank"> <img src="imagens/fb.png" style=" height: 35px; margin-right: 25px; float:right "/> </a>
                <a id="quemsomos" href ="quemsomos.jsp" title="Desenvolvedores">Quem somos</a>
            </div>            
        </footer>
    </body>
</html>
