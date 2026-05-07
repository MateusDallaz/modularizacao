import mysql.connector
from conexao import conectar

def inserir_servico(conexao):
    mecanico = input('Digite o mecanico responsavel: ')
    descricao = input('Digite a descrição do serviço realizado: ')
    cursor = conexao.cursor()
    sql = "INSERT INTO servico(mecanico_encarregado, descricao_servico) VALUES(%s, %s)"
    values = (mecanico, descricao)
    cursor.execute(sql, values)
    conexao.commit()
    print(f'\nServiço inserido: {mecanico} - {descricao}')