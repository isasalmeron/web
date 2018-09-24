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
        
        <section class="introBusca2">
            Preencha os campos abaixo para verificar se um determinado livro está disponível em acervo ou emprestado. Não é necessário preencher todos os campos.
        </section>
        
        <form class="formBusca2" method="post" action="Disponibilidade">
            <p>
                <label for="categoria">Categoria: </label>
                <input id="categoria" name="categoria" type="text" title="Informe a categoria do livro." placeholder="ex.: Art">   
            </p>
            <p>
                <label for="titulo">Título: </label>
                <input id="titulo" name="titulo" type="text" title="Informe o título do livro." placeholder="ex.: Downtown">   
            </p> 
            <p>
                <label for="isbn">ISBN: </label>
                <input id="isbn" name="isbn" type="text" title="Informe o ISBN do livro." placeholder="ex.: 067176537X">   
            </p>
            <p>
                <label for="codigo">Código: </label>
                <input id="codigo" name="codigo" type="text" pattern="[0-9]+$" title="Informe o código do livro. Apenas valores numéricos." placeholder="ex.: 123">   
            </p> 
            <p>
                <label for="ordencao">Ordenar por: </label>
                <select id="ordenacao" name="ordenacao" title="Ordenar resultados da consulta.">
                    <option value="categoria" selected>Categoria</option>
                    <option value="titulo">Título</option>
                    <option value="isbn">ISBN</option>
                    <option value="codigo">Código</option>
                </select>
            </p>
            <p>
                <input id="btConsultar" value="Consultar" type="submit" title="Consultar disponibilidade do livro.">
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
