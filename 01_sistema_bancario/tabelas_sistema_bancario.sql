-- =====================================================
-- PROJETO 01 - SISTEMA BANCÁRIO
-- ARQUIVO: tabelas_sistema_bancario.sql
-- DESCRIÇÃO: Criação das tabelas do banco de dados
-- =====================================================

CREATE DATABASE SISTEMA_BANCARIO

USE SISTEMA_BANCARIO


-- ======================================
-- TABELA: clientes
-- Armazena informações dos clientes
-- ======================================

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY, -- Identificador único do cliente
    nome VARCHAR(100) NOT NULL, -- Nome completo
    cpf VARCHAR(11) UNIQUE NOT NULL, -- CPF único
    data_nascimento DATE NOT NULL -- Data de nascimento
);

-- ======================================
-- TABELA: contas
-- Cada cliente pode ter uma conta
-- ======================================

CREATE TABLE contas (
    id_conta INT PRIMARY KEY, -- Identificador da conta
    id_cliente INT NOT NULL, -- Cliente dono da conta
    saldo DECIMAL(10,2) DEFAULT 0.00, -- Saldo da conta
    
    -- Relacionamento com clientes
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- ======================================
-- TABELA: transacoes
-- Registra depósitos e saques
-- ======================================

CREATE TABLE transacoes (
    id_transacao INT PRIMARY KEY, -- Identificador da transação
    id_conta INT NOT NULL, -- Conta relacionada
    tipo VARCHAR(20) NOT NULL, -- 'deposito' ou 'saque'
    valor DECIMAL(10,2) NOT NULL, -- Valor da transação
    data_transacao DATE NOT NULL, -- Data
    
    -- Relacionamento com contas
    FOREIGN KEY (id_conta) REFERENCES contas(id_conta)
);
