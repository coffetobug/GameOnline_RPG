# Banco de Dados - Jogo de RPG Online 
<p align="center">
  <img src="assets/jogoimagem.gif" width="500px" alt="Demonstração do Jogo">
</p>

Projeto desenvolvido para a criação e estruturação do banco de dados relacional de um jogo de RPG online utilizando **SQL Server (T-SQL)**.

---

## Sobre a Atividade

O objetivo deste projeto é implementar o script de definição de dados (**DDL**) a partir de um Diagrama Entidade-Relacionamento (DER), aplicando conceitos de integridade referencial, chaves primárias (`PK`), chaves estrangeiras (`FK`) e relacionamentos de cardinalidade `1:N` e `N:N`.

---

## Estrutura do Banco de Dados

O banco de dados `RPG_Online` é composto pelas seguintes tabelas:

* **`USUARIOS`**: Armazena as credenciais de acesso (e-mail e senha) dos jogadores.
* **`CLASSES`**: Define as classes de personagens (ex: Guerreiro, Mago, Arqueiro) e suas descrições.
* **`HABILIDADES`**: Cadastra as habilidades e poderes disponíveis no jogo.
* **`PERSONAGENS`**: Relaciona cada personagem ao seu respectivo usuário (`1:N`) e à sua classe (`1:N`).
* **`CLASSES_HABILIDADES`**: Tabela associativa que resolve o relacionamento de muitos para muitos (`N:N`) entre classes e habilidades.

