import mysql.connector
from conexao import conectar

def listar_servicos(conexao):
    cursor = conexao.cursor()
    cursor.execute("SELECT * FROM servico")
    resultado = cursor.fetchall()
    for i in resultado:
        print(i)