# 📦 Manual de Execução com Docker + Instalação do PGAdmin

### 🚀 1. Subindo PostgreSQL + PGAdmin com Docker

▶️ Para iniciar o ambiente (execute os comandos abaixo em um terminal...):

```bash
docker compose up -d
```

🛑 Para parar:

```bash
docker compose down
```
---

### 🌐 2. Acessando o PGAdmin

Depois que os containers estiverem rodando, abra no navegador:

👉 http://localhost:5050

Faça login com:

Email: admin@admin.com
Senha: admin123

---

### 🔌 3. Conectando o PGAdmin ao PostgreSQL do Docker

No PGAdmin:

Clique com o botão direito em Servers > Register > Server

Preencha:

📌 Aba "General"

Name: PostgreSQL Docker

📌 Aba "Connection"

Host: postgres

Port: 5432

Username: admin

Password: admin123

Importante: o host deve ser postgres, pois é o nome do serviço no docker-compose.

Clique Save.

Pronto! Você está conectado ao PostgreSQL dentro do Docker.

---

### 🗄 4. Executando os Scripts SQL

Com o banco de dados "vidaplena" já criado pelo Docker, basta:

Navegar em:

Servers > PostgreSQL Docker > Databases > vidaplena


Clicar com o botão direito → Query Tool

Executar os scripts na seguinte ordem:

01_create_tables.sql
02_insert_data.sql
03_select_queries.sql
04_updates.sql
05_deletes.sql

---

### 🧪 5. Testando se funcionou

Execute:

SELECT * FROM paciente;


Se aparecerem os dados inseridos, o ambiente está configurado corretamente.