# 📊 Salaries Differences – StrataScratch (SQL & Python)

Este repositório contém a resolução do desafio **"Salaries Differences"** da plataforma StrataScratch, explorando duas abordagens distintas: **SQL** para consultas estruturadas e **Python (Pandas)** para manipulação de DataFrames.

🔗 **Link do desafio:** [Salaries Differences - StrataScratch](https://platform.stratascratch.com/coding/10308-salaries-differences)

---

## 🎯 Objetivo do Projeto

O objetivo principal é calcular a diferença absoluta entre os maiores salários dos departamentos de **Marketing** e **Engenharia**.

> [!NOTE]
> **Exercício Adicional (Apenas em SQL):** > Na solução SQL, incluí uma análise complementar (não exigida originalmente na plataforma) para calcular a **média salarial** dos departamentos de **Vendas** e **Engenharia**.

---

## 🗂 Estrutura das Tabelas (Esquema)

O desafio baseia-se em duas tabelas relacionadas:

### **db_employee**
| Coluna | Tipo |
| :--- | :--- |
| `id` | bigint |
| `first_name` | text |
| `last_name` | text |
| `salary` | bigint |
| `department_id` | bigint |

### **db_dept**
| Coluna | Tipo |
| :--- | :--- |
| `id` | bigint |
| `department` | text |

---

## 🧠 Conceitos e Recursos Utilizados

### **Solução em SQL (MySQL)**
Nesta abordagem, foquei em performance de query e legibilidade:
* **JOIN:** Relacionamento entre as tabelas de funcionários e departamentos.
* **Agregações:** Uso de `MAX()` e `AVG()`.
* **Subqueries / Agregações Condicionais:** Para isolar os valores de departamentos específicos.
* **ABS():** Função matemática para retornar a diferença absoluta.

### **Solução em Python (Pandas)**
Abordagem voltada para análise de dados programática:
* **Merge:** Integração de DataSets com `pd.merge()`.
* **Boolean Indexing:** Filtragem eficiente de linhas baseada em condições de texto.
* **Series Operations:** Manipulação de colunas específicas para extração de valores máximos.
* **Python Built-ins:** Uso da função `abs()` para o cálculo final.

---

## 📂 Estrutura do Repositório

```directory
├── sql/
│   └── salaries-differences.sql       # Resolução + Exercício Adicional
└── python/
    └── salaries_differences.py        # Resolução original do desafio
