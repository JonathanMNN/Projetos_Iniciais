-- =====================================================
-- PROJETO 01 - SISTEMA BANCÁRIO
-- ARQUIVO: insert_data.sql
-- DESCRIÇÃO: Inserção de dados de exemplo
-- =====================================================

-- Inserindo clientes
INSERT INTO clientes (id_cliente, nome, cpf, data_nascimento) VALUES
(1, 'Jonathan Moraes', '12345678900', '2002-05-10'),
(2, 'Maria Souza', '98765432100', '1999-08-20');

-- Inserindo contas
INSERT INTO contas (id_conta, id_cliente, saldo) VALUES
(1, 1, 1500.00),
(2, 2, 3200.00);

-- Inserindo transações
INSERT INTO transacoes (id_transacao, id_conta, tipo, valor, data_transacao) VALUES
(1, 1, 'deposito', 500.00, '2025-02-01'),
(2, 1, 'saque', 200.00, '2025-02-02'),
(3, 2, 'deposito', 1000.00, '2025-02-03');
