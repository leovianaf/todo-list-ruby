---

# 📝 **TO DO List Ruby**  

🚀 Um simples e poderoso gerenciador de listas de tarefas criado com Ruby on Rails.

---

## **📌 Descrição**

Este é um projeto de gerenciamento de tarefas com funcionalidades básicas e opcionais:

### **Funcionalidades Obrigatórias**  
1. ✅ Criação de várias listas de TO DO.  
2. ✅ Cada lista permite a adição de vários itens.  

### **Funcionalidades Extras**  
3. 🗄️ Categorias para organizar as listas de forma eficiente.  
4. 🏷️ Tags para uma personalização ainda maior dos itens.
   - Tags padrão: Urgente, Tranquilo, Lazer, Pessoal, Trabalho.

---

## **🌐 Deploy**

Acesse o projeto no deploy em: **[todo-list-ruby](#)**

---

## **📦 Requisitos do Projeto**

### **Obrigatórios**
1. **Ruby** versão `3.4.1`.  
2. **Rails** versão `9.0.1`.  
3. **Banco de Dados PostgreSQL** configurado na versão mais recente.  
4. **Docker** `20.10.17` ou superior. 
5. **Docker Compose** `1.29.2` ou superior.

---

## **🛠️ Como Instalar e Rodar o Projeto?**

1. Clone o repositório:
   ```bash
   git clone https://github.com/leovianaf/todo-list-ruby
   cd todo-list-ruby
   ```

2. Faça o build da aplicação com o Docker:
   ```bash
   docker-compose up --build
   ```

3. Acesse o container da aplicação:
   ```bash
   docker-compose exec web bash
   ```

4. Rode as migrações do banco de dados:
   ```bash
   bin/rails db:migrate
   ```

5. Acesse no navegador: **http://localhost**

---

## **⚙️ Como Usar o TO DO List?**

### **Criando uma Categoria**
1. Clique no botão **"Nova Categoria"**.  
2. Preencha o nome da categoria e salve.  

### **Criando uma Lista**
1. Clique no botão **"Nova Lista"**.  
2. Preencha o nome da lista
3. Escolha uma categoria para a lista e salve.  

### **Adicionando Itens**
1. Acesse a lista desejada.  
2. Clique em **"Adicionar Novo Item"**.  
3. Preencha a descrição do item e adicione tags (opcional).
   - Exemplo de item: "Comprar leite" com a tag "Pessoal". 

---

## **🚀 Tecnologias Utilizadas**

- **Ruby on Rails**: Framework principal.  
- **PostgreSQL**: Banco de dados relacional.  
- **Docker**: Para facilitar o setup do ambiente.  

---

## **📂 Estrutura do Projeto**

- **Modelos Principais**:
  - **Categoria**: Organização adicional para as listas.
  - **Lista**: Representa uma lista de tarefas.
  - **Item**: Cada tarefa associada a uma lista.
  - **Tag**: Permite adicionar tags aos itens para maior personalização.
- **Relacionamentos**:
  - **Uma categoria pode ter várias listas.**
  - **Uma lista pode ter vários itens.**
  - **Um item pode ter várias tags e várias tags podem estar associadas a vários itens.**

### **🧩 Diagrama ERD do Banco de Dados**
![Diagrama todo_list_ruby](https://github.com/user-attachments/assets/f6bdffe3-249b-4c68-95f0-092ae50b3ab2)

## **📸 Imagens do Projeto**

![Home](https://github.com/user-attachments/assets/ffa9c6ec-c914-4e7e-8829-2b1055c13aca)
![Criar Nova Lista](https://github.com/user-attachments/assets/640487e4-f909-47ae-a908-413c85605f05)
![Lista com Items](https://github.com/user-attachments/assets/39adb154-33aa-487f-b594-db72ce44141e)
![Criar Novo Item](https://github.com/user-attachments/assets/7b073597-5b42-4688-99b4-4fd654ce988b)
![Gerenciar Tags](https://github.com/user-attachments/assets/b0bba935-c391-4946-9b69-847bfee4c889)

---
