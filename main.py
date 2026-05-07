import mysql.connector

from conexao import conectar
from cadastroServico import inserir_servico
from listarServico import listar_servicos
from fecharConexao import fechar_conexao

conectar()
inserir_servico()