import mysql.connector
from conexao import conectar

def conectar():
    conexao = mysql.connector.connect(
        host='localhost',
        user='root',
        password='',
        database='oficina'
    )
    print('\nConectado')
    return conexao