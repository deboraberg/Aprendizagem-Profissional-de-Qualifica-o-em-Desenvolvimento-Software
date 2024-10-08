/*. Criando Banco de Dados - Arquivo*/
create database AutoViaLocadora;
/*Criando tabels*/
CREATE TABLE Marcas (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL UNIQUE
    );
CREATE TABLE Modelos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	id_marca INT,
    FOREIGN KEY (id_marca) REFERENCES Marcas(id)
);
CREATE TABLE Veiculos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	placa VARCHAR(10) NOT NULL UNIQUE,
    ano INT NOT NULL,
    cor VARCHAR (20),
    id_modelo INT,
	status ENUM('Disponivel', 'Locado', 'Em Manutenção') DEFAULT 'Disponivel',
	FOREIGN KEY (id_modelo) REFERENCES Modelos(id)
);
CREATE TABLE Clientes (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    endereco VARCHAR(255)
 );   
 CREATE TABLE Contratos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_veiculo INT,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
	FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id)
    );
    
    
