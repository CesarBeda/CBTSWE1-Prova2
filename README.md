# CBTSWE1 - Prova 02

Trabalho Final de Sistemas Web 1

**Aluno:** Cesar Beda Candido da Silva CB302704X

Obs: O vídeo demonstrando o funcionamento da aplicação esta listado abaixo.

# Sistema de Gestão de Vendas


## Funcionalidades

A aplicação implementa as operações de CRUD (Create, Read, Update, Delete) para as três entidades principais do sistema cadastrar os clientes (Customer), vendedores
(SalesMan) e as ordens de vendas

## Estrutura do Banco de Dados

O banco de dados foi modelado para armazenar as informações de vendedores, clientes e suas respectivas ordens de venda, garantindo a integridade dos dados através de chaves primárias e estrangeiras.

### Tabela: `salesman` (Vendedores)

Armazena os dados dos vendedores.

| Coluna | Tipo | Descrição |
|---|---|---|
| `SALESMAN_ID` | `INT(5)` | Chave Primária (PK), Auto-Incremento |
| `NAME` | `VARCHAR(30)` | Nome do vendedor |
| `CITY` | `VARCHAR(15)` | Cidade do vendedor |
| `COMMISSION`| `DECIMAL(5,2)`| Percentual de comissão |

<br>

### Tabela: `customer` (Clientes)

Armazena os dados dos clientes e a sua associação com um vendedor.

| Coluna | Tipo | Descrição |
|---|---|---|
| `CUSTOMER_ID` | `INT(5)` | Chave Primária (PK), Auto-Incremento |
| `CUST_NAME` | `VARCHAR(30)` | Nome do cliente |
| `CITY` | `VARCHAR(15)` | Cidade do cliente |
| `GRADE` | `INT(3)` | Nível ou classificação do cliente |
| `SALESMAN_ID` | `INT(5)` | Chave Estrangeira (FK) para `salesman.SALESMAN_ID` |

<br>

### Tabela: `orders` (Ordens de Venda)

Armazena os dados de cada ordem de venda, ligando um cliente a um vendedor.

| Coluna | Tipo | Descrição |
|---|---|---|
| `ORD_NO` | `INT(5)` | Chave Primária (PK), Auto-Incremento |
| `PURCH_AMT` | `DECIMAL(8,2)`| Valor total da compra |
| `ORD_DATE` | `DATE` | Data em que a ordem foi feita |
| `CUSTOMER_ID`| `INT(5)` | Chave Estrangeira (FK) para `customer.CUSTOMER_ID` |
| `SALESMAN_ID`| `INT(5)` | Chave Estrangeira (FK) para `salesman.SALESMAN_ID` |

---

# 🎬 Vídeo Completo da Aplicação (Youtube)

Para assistir ao vídeo completo da aplicação:

Link: https://youtu.be/Gsf6M2XncT8
