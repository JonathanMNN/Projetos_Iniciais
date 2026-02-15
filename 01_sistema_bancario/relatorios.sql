-- =====================================================
-- PROJETO 01 - SISTEMA BANCÁRIO
-- ARQUIVO: relatorios.sql
-- DESCRIÇÃO: Relatórios e análises
-- =====================================================

-- ======================================
-- 1. Saldo total armazenado no banco
-- ======================================
SELECT SUM(saldo) AS saldo_total
FROM contas;

-- ======================================
-- 2. Quantidade de transações por tipo
-- ======================================
SELECT tipo, COUNT(*) AS quantidade
FROM transacoes
GROUP BY tipo;

-- ======================================
-- 3. Valor total movimentado por tipo
-- ======================================
SELECT tipo, SUM(valor) AS total_movimentado
FROM transacoes
GROUP BY tipo;

-- ======================================
-- 4. Total movimentado por cliente
-- ======================================
SELECT c.nome, SUM(t.valor) AS total_movimentado
FROM clientes c
JOIN contas ct ON c.id_cliente = ct.id_cliente
JOIN transacoes t ON ct.id_conta = t.id_conta
GROUP BY c.nome;
