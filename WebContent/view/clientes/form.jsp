<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Inventário - Cadastro de Clientes</title>
    
    <style>
        * { box-sizing: border-box; }
        body, html { margin: 0; padding: 0; height: 100%; font-family: 'Segoe UI', sans-serif; background-color: #f0f4f8; display: flex; flex-direction: column; }
        header { background-color: white; box-shadow: 0 2px 8px rgba(0,0,0,0.1); padding: 15px 30px; height: 70px; display: flex; align-items: center; justify-content: center; z-index: 100; }
        header .menu ul { list-style: none; margin: 0; padding: 0; display: flex; }
        header .menu li a { text-decoration: none; color: #1911EE; font-weight: 600; margin-left: 20px; padding: 10px; border-radius: 5px; transition: background-color 0.3s ease; }
        header .menu li a:hover { background-color: #D8DEFF; }
        main.container { max-width: 800px; margin: auto; padding: 40px; background-color: #ffffff; border-radius: 16px; box-shadow: 0 10px 25px rgba(0,0,0,0.1); }
        main.container h1 { font-size: 28px; color: #0600BB; margin-top: 0; margin-bottom: 30px; text-align: center; }
        .form-group { margin-bottom: 20px; }
        .form-group label { display: block; margin-bottom: 8px; font-weight: 600; color: #495057; }
        .form-group input[type="text"], .form-group input[type="date"], .form-group input[type="number"], .form-group select { width: 100%; padding: 12px; border: 1px solid #D8DEFF; border-radius: 8px; font-size: 1rem; box-sizing: border-box; transition: border-color 0.2s ease, box-shadow 0.2s ease; }
        .form-group input:focus, .form-group select:focus { border-color: #D8DEFF; outline: 0; box-shadow: 0 0 0 0.2rem rgb(216, 222, 255); }
        .form-group-buttons { display: flex; justify-content: flex-end; gap: 15px; margin-top: 30px; border-top: 1px solid #eee; padding-top: 20px; }
        .button, input[type="submit"] { padding: 12px 24px; border: none; border-radius: 8px; font-size: 1rem; font-weight: 600; cursor: pointer; text-decoration: none; text-align: center; transition: all 0.2s ease; }
        input[type="submit"] { background-color: #1911EE; color: white; }
        input[type="submit"]:hover { background-color: #0600BB; }
        .btn-cinza { background-color: #6c757d; color: white; }
        .btn-cinza:hover { background-color: #5a6268; }
        footer { background-color: white; box-shadow: 0 -2px 8px rgba(0,0,0,0.1); height: 50px; display: flex; justify-content: center; align-items: center; color: #1911EE; font-weight: 600; }
    </style>
</head>
<body>
    <header>
         <nav class="menu">
            <ul>
            	<li><a href="${pageContext.request.contextPath}/home">Início</a></li>
                <li><a href="${pageContext.request.contextPath}/clientes">Clientes</a></li>
                <li><a href="${pageContext.request.contextPath}/vendedores">Vendedores</a></li>
                <li><a href="${pageContext.request.contextPath}/ordensVenda">Ordens de Venda</a></li>
            </ul>
        </nav>
    </header>
    
    <main class="container">
        <h1>
            <c:if test="${cliente != null}">Editar Cliente</c:if>
            <c:if test="${cliente == null}">Novo Cliente</c:if>
        </h1>
        
        <div class="form-container">
            <form action="${cliente != null ? 'update' : 'insert'}" method="post">
                <input type="hidden" name="id" value="<c:out value='${cliente.customerId}' />" />
                
                <div class="form-group">
                    <label for="cust_name">Nome do Cliente:</label>
                    <input type="text" id="cust_name" name="cust_name" value="<c:out value='${cliente.custName}' />" required />
                </div>
                
                <div class="form-group">
                    <label for="city">Cidade:</label>
                    <input type="text" id="city" name="city" value="<c:out value='${cliente.city}' />" required />
                </div>
                
                <div class="form-group">
                    <label for="grade">Classificação:</label>
                    <input type="text" id="grade" name="grade" value="<c:out value='${cliente.grade}' />" required />
                </div>
                
                <div class="form-group">
                    <label for="salesman_id">Vendedor:</label>
                    <select name="salesman_id" id="salesman_id" required>
                        <option value="">-- Selecione um vendedor --</option>
                        <c:forEach var="vendedor" items="${listaVendedores}">
                            <option value="${vendedor.salesmanId}" 
                                <c:if test="${cliente.salesmanId == vendedor.salesmanId}">selected</c:if>>
                                ${vendedor.name}
                            </option>
                        </c:forEach>
                    </select>
                </div>
                
                <div class="form-group-buttons">
                    <a href="${pageContext.request.contextPath}/clientes" class="button btn-cinza">Cancelar</a>
                    <input type="submit" value="Salvar" class="button"/>
                </div>
            </form>
        </div>
    </main>

    <footer>
        Desenvolvido por Cesar Beda
    </footer>
</body>
</html>