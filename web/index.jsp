<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        
        <section style = "margin-top: 100px">
            <h1>Selecione o que deseja buscar:</h1>
            <article class="box" id="historico">
                <a href="consultaHistorico.jsp" title="Pesquisar histórico de livros.">
                    <div id="texto">Histórico</div>
                    <div id="legenda">Pesquise o histórico de livros emprestados em um determinado período</div>
                </a>
            </article>
            <article class="box" id="localizacao">
                <a href="consultaDisponibilidade.jsp" title="Verificar disponibilidade do livro.">
                    <div id="texto">Disponibilidade</div>
                    <div id="legenda">Verifique se um livro está emprestado ou no acervo</div>
                </a>
            </article>
        </section>
        
        <footer>
            <div style="color: yellow"> 
                
                <img src="imagens/icone.png" style=" height: 40px; margin-left: 20px; float: left "/>
                <a href="https://www.facebook.com/RepDiretoria/?fref=ts" target = "_blank"> <img src="imagens/fb.png" style=" height: 35px; margin-right: 25px; float:right "/> </a>
                <a id="quemsomos" href ="quemsomos.jsp" title="Desenvolvedores">Quem somos</a>
            </div>            
        </footer>
    </body>
</html>