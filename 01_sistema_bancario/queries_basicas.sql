-- =====================================================
-- PROJETO 01 - SISTEMA BANCÁRIO
-- ARQUIVO: queries_basicas.sql
-- DESCRIÇÃO: Consultas básicas
-- =====================================================

-- ======================================
-- 1. Listar todos os clientes
-- ======================================
SELECT * FROM clientes;

-- ======================================
-- 2. Listar contas com saldo maior que 2000
-- ======================================
SELECT * 
FROM contas
WHERE saldo > 2000;

-- ======================================
-- 3. Buscar transações do tipo saque
-- ======================================
SELECT *
FROM transacoes
WHERE tipo = 'saque';

-- ======================================
-- 4. Exibir nome do cliente e saldo (JOIN)
-- ======================================
SELECT c.nome, ct.saldo
FROM clientes c
JOIN contas ct ON c.id_cliente = ct.id_cliente;
