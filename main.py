import mysql.connector

def conectar():
    conexao = mysql.connector.connect(
        host='localhost',
        user='root',
        password='',
        database='oficina'
    )
    print('Conectado')
    return conexao

def inserir_servico(conexao):
    mecanico = input('Digite o mecanico responsavel: ')
    descricao = input('Digite a descrição do serviço realizado: ')
    cursor = conexao.cursor()
    sql = "INSERT INTO servico(mecanico_encarregado, descricao_servico) VALUES(%s, %s)"
    values = (mecanico, descricao)
    cursor.execute(sql, values)
    conexao.commit()
    print(f'Serviço inserido: {mecanico} - {descricao}')

def listar_servicos(conexao):
    cursor = conexao.cursor()
    cursor.execute("SELECT * FROM servico")
    resultado = cursor.fetchall()
    for i in resultado:
        print(i)

def fechar_conexao(conexao):
    conexao.close()
    print('Conexão encerrada')

# Uso
conexao = conectar()
inserir_servico(conexao)
listar_servicos(conexao)
fechar_conexao(conexao)