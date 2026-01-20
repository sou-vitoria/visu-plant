-- Script de inicialização do banco PostgreSQL para VisuPlant
-- Este arquivo será executado automaticamente quando o container PostgreSQL for criado pela primeira vez

-- Criar a tabela de apartamentos
CREATE TABLE IF NOT EXISTS apartamentos (
    id SERIAL PRIMARY KEY,
    numero VARCHAR(10) UNIQUE NOT NULL,
    status VARCHAR(20) DEFAULT 'disponivel' CHECK (status IN ('disponivel', 'negociacao', 'reservado', 'vendido')),
    cliente_nome VARCHAR(255),
    cliente_telefone VARCHAR(20),
    cliente_email VARCHAR(255),
    cliente_cpf VARCHAR(14),
    consultor_nome VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Limpar todos os apartamentos existentes
DELETE FROM apartamentos;

-- Inserir apartamentos iniciais com status específicos

-- LOJAS
INSERT INTO apartamentos (numero, status) VALUES ('L01', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('L02', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('L03', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

-- 2º Andar - STUDIO PLUS / APTO 2D PLUS COM VAGA
INSERT INTO apartamentos (numero, status) VALUES ('201', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('202', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('203', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('204', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('205', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('206', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('207', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('208', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('209', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('210', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('211', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('212', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('213', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('214', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('215', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('216', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('217', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('218', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

-- 3º Andar - STUDIO / APTO 2D COM VAGA
INSERT INTO apartamentos (numero, status) VALUES ('301', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('302', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('303', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('304', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('305', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('306', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('307', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('308', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('309', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('310', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('311', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('312', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('313', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('314', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('315', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('316', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('317', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('318', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

-- 4º Andar - STUDIO / APTO 2D COM VAGA
INSERT INTO apartamentos (numero, status) VALUES ('401', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('402', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('403', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('404', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('405', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('406', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('407', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('408', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('409', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('410', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('411', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('412', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('413', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('414', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('415', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('416', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('417', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('418', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

-- 5º Andar - COBERTURA C/ TERRAÇO
INSERT INTO apartamentos (numero, status) VALUES ('501', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('502', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('503', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('504', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('505', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('506', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('507', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('508', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('509', 'reservado')
ON CONFLICT (numero) DO UPDATE SET status = 'reservado', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

-- VAGAS DE GARAGEM PRIVATIVAS
INSERT INTO apartamentos (numero, status) VALUES ('VG01', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('VG02', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('VG03', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

INSERT INTO apartamentos (numero, status) VALUES ('VG04', 'disponivel')
ON CONFLICT (numero) DO UPDATE SET status = 'disponivel', cliente_nome = NULL, cliente_telefone = NULL, cliente_email = NULL, cliente_cpf = NULL, consultor_nome = NULL, updated_at = CURRENT_TIMESTAMP;

-- Criar índices para melhor performance
CREATE INDEX IF NOT EXISTS idx_apartamentos_status ON apartamentos(status);
CREATE INDEX IF NOT EXISTS idx_apartamentos_numero ON apartamentos(numero);

-- Função para atualizar o campo updated_at automaticamente
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Trigger para atualizar o campo updated_at automaticamente
CREATE TRIGGER update_apartamentos_updated_at
    BEFORE UPDATE ON apartamentos
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

-- Criar tabela de fila de segunda opção
CREATE TABLE IF NOT EXISTS fila_segunda_opcao (
    id SERIAL PRIMARY KEY,
    apartamento_numero VARCHAR(10) NOT NULL,
    posicao_fila INTEGER NOT NULL,
    cliente_nome VARCHAR(255) NOT NULL,
    cliente_telefone VARCHAR(20) NOT NULL,
    cliente_email VARCHAR(255) NOT NULL,
    cliente_cpf VARCHAR(14) NOT NULL,
    consultor_nome VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_apartamento FOREIGN KEY (apartamento_numero)
        REFERENCES apartamentos(numero) ON DELETE CASCADE,
    CONSTRAINT unique_cpf_apartamento UNIQUE (apartamento_numero, cliente_cpf)
);

-- Criar índices para performance nas consultas de fila
CREATE INDEX IF NOT EXISTS idx_fila_apartamento_posicao
    ON fila_segunda_opcao(apartamento_numero, posicao_fila);
CREATE INDEX IF NOT EXISTS idx_fila_cpf
    ON fila_segunda_opcao(cliente_cpf);

-- Trigger para atualizar o campo updated_at da fila automaticamente
CREATE TRIGGER update_fila_segunda_opcao_updated_at
    BEFORE UPDATE ON fila_segunda_opcao
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();
