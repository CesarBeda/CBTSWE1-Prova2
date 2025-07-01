<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Inventário - Início</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/styles/style.css'/>">
    
    <style>
        * { 
            box-sizing: border-box; 
        }

        body, html { 
            margin: 0; 
            padding: 0; 
            height: 100%; 
            font-family: 'Segoe UI', sans-serif; 
            background-color: #f0f4f8; 
            display: flex; 
            flex-direction: column; 
        }

        /* Estilo para o cabeçalho */
        header { 
            background-color: white; 
            box-shadow: 0 2px 8px rgba(0,0,0,0.1); 
            padding: 15px 30px; 
            height: 70px;
            width: 100%; 
            display: flex; 
            align-items: center; 
            justify-content: center; 
            z-index: 100;
        }

        /* Estilo para a navegação da direita */
        
        header .menu ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        header .menu li a {
            text-decoration: none; 
            color: #1911EE;
            font-weight: 600; 
            margin-left: 20px;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        header .menu li a:hover {
            background-color: #D8DEFF; 
        }

        /* Conteúdo principal */
        main { 
            flex: 1; 
            margin-top: 20px; 
            display: flex; 
            justify-content: center; 
            align-items: center; 
            padding: 20px;
        }

        /* O card central */
        .card { 
            background-color: white; 
            padding: 40px; 
            border-radius: 16px; 
            box-shadow: 0 10px 25px rgba(0,0,0,0.1); 
            text-align: center; 
            max-width: 550px; 
            width: 100%; 
        }

        .card h2 { 
            margin-top: 0;
            margin-bottom: 25px; 
            font-size: 28px; 
            color: #0600BB; 
        }

        .card p {
            font-size: 18px;
            color: #333;
            line-height: 1.6;
        }

        .card strong { 
            color: #4CAF50; 
        }

        /* Rodapé */
        footer { 
            background-color: white; 
            box-shadow: 0 -2px 8px rgba(0,0,0,0.1); 
            height: 50px; 
            display: flex; 
            justify-content: center; 
            align-items: center; 
            color:  #1911EE; 
            font-weight: 600;
        }
    </style>
</head>
<body>
    <header>
        <nav class="menu">
            <ul>
            	<li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/clientes">Clientes</a></li>
                <li><a href="${pageContext.request.contextPath}/vendedores">Vendedores</a></li>
                <li><a href="${pageContext.request.contextPath}/ordensVenda">Ordens de Venda</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="card">
            <h2>Bem-vindo ao Sistema de Inventário</h2>
            <p>
                Trabalho Prático Final de SWE1
            </p>
        </div>
    </main>
    
    <footer>
        Desenvolvido por Cesar Beda
    </footer>
</body>
</html>