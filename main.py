#importa a biblioteca para conectar conectar o banco de dados 
import mysql.connector


#Executa uma fuinção da lib 
conexao = mysql.connector.connect(
    #partametros 
    host = 'localhost',
    user = 'root',
    password = '',
    database = 'oficina'
)

print('conectado')

#função cursor() da lib 
cursor = conexao.cursor()

#comandos de inserção de parametros
sql = "INSERT INTO servico(mecanico_encarregado, descricao_servico) VALUES(%s, %s)"
values = ("João", "Troca de oleo")

cursor.execute(sql, values)
conexao.commit()

cursor.execute("SELECT * FROM servico")

resultado = cursor.fetchall()

for i in resultado:
    print(i)