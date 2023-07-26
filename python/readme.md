Ambiente:
---
- Crie um virtual env com Python 3.x
- Copie os arquivos para o VENV
- Abra um terminal, e execute o watchdog.sh para matar os scripts após 1m
- Execute 1 script por vez

Explicação:
---
1. "experimento_cpu.py": Este script cria uma carga de CPU criando um número de processos igual ao número de núcleos do processador e colocando-os em loops infinitos. Isso ocupará todos os núcleos do processador.

2. "experimento_memoria.py": Este script cria uma carga de memória alocando uma matriz de tamanho gigante (tamanho igual à memória disponível) e colocando-a em um loop infinito. Isso fará com que a memória do sistema seja preenchida até que não haja mais espaço disponível.