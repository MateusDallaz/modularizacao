import mysql.connector
from conexao import conectar

def fechar_conexao(conexao):
    conexao.close()
    print('\nConexão encerrada')