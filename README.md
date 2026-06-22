#  Projeto Locadora de Veículos (MySQL)

Este é um projeto prático e fictício desenvolvido com o objetivo de estudar, praticar e consolidar os conceitos básicos e fundamentais do banco de dados **MySQL**. 

O cenário escolhido foi o sistema de gerenciamento de uma locadora de carros, ideal para aplicar conceitos de relacionamentos entre tabelas, chaves primárias/estrangeiras e manipulação de dados (CRUD).

---

##  Objetivos de Aprendizado

* Criar e estruturar um banco de dados relacional (`CREATE DATABASE` e `CREATE TABLE`).
* Definir restrições de integridade (`PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`).
* Praticar a inserção de dados simulados (`INSERT INTO`).
* Executar consultas simples e complexas utilizando filtros (`SELECT`, `WHERE`, `ORDER BY`, `LIKE`).
* Atualizar e deletar registros com segurança (`UPDATE` e `DELETE`).

---

##  Estrutura do Banco de Dados (Modelagem Conceitual)

O sistema simula a interação entre três entidades principais:

1. **Clientes (`clientes`):** Armazena dados pessoais dos locatários (Nome, CPF, CNH, Telefone, E-mail).
2. **Veículos (`veiculos`):** Armazena os carros disponíveis para locação (Marca, Modelo, Placa, Ano, Preço da Diária).
3. **Locações (`locacoes`):** Tabela intermediária que une o cliente ao veículo, registrando as datas de retirada, devolução e o valor total.

---

