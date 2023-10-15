# **O que é um Dataset?**
Um *dataset* é um conjunto de dados organizado de forma estruturada. Em ciência de dados e aprendizado de máquina, um dataset é a matéria-prima essencial. Ele consiste em um conjunto de observações ou exemplos, cada um contendo informações sobre um objeto ou evento específico. Essas informações são organizadas em linhas (amostras) e colunas (atributos ou características). Os datasets podem ser utilizados para treinar modelos de aprendizado de máquina, realizar análises estatísticas e obter insights valiosos.

Aqui estão algumas das principais tarefas ao explorar um dataset em Python:

## Carregar um Dataset
Você pode usar bibliotecas como `pandas` para carregar datasets em Python. Por exemplo:

```python
import pandas as pd

dataset = pd.read_csv('seu_dataset.csv')
```

## Visualizar o Topo dos Dados
Para verificar as primeiras linhas do seu dataset e ter uma ideia inicial dos dados, utilize o comando `head()`:

```python
dataset.head()
```

## Verificar Estatísticas Básicas

Para obter estatísticas descritivas das colunas numéricas, use `describe()`:

```python
dataset.describe()
```

## Contar Valores Únicos
Para contar os valores únicos em uma coluna, utilize `nunique()`:

```python
dataset['coluna'].nunique()
```

## Filtrar Dados
Para criar subconjuntos dos dados com base em condições, você pode usar a indexação booleana:

```python
subset = dataset[dataset['coluna'] > 50]
```

## Manipular Colunas
Você pode criar, renomear, ou excluir colunas:

```python
dataset['nova_coluna'] = dataset['coluna1'] + dataset['coluna2']
dataset = dataset.rename(columns={'coluna_antiga': 'coluna_nova'})
dataset = dataset.drop(['coluna_indesejada'], axis=1)
```


## Lidar com Valores Ausentes
Para lidar com valores ausentes (NaN), você pode usar isna() para identificá-los e fillna() para preenchê-los:


```python
dataset.isna().sum()
dataset['coluna'].fillna(valor_de_preenchimento, inplace=True)
```

## Visualização de Dados
Use bibliotecas como matplotlib e seaborn para criar visualizações:

```python
import matplotlib.pyplot as plt
import seaborn as sns

sns.histplot(dataset['coluna_numerica'])
plt.show()
```

### Correlação
Para avaliar a correlação entre as colunas numéricas, você pode usar corr():

```python
correlacao = dataset.corr()
```

Explorar um dataset em Python é uma parte crucial do processo de análise de dados e modelagem de aprendizado de máquina. Esses comandos são importantes no momento de iniciar a exploração de dados, porém existem outros que também podem ajudar no processo.