# experimento_memoria.py
import psutil
import numpy as np

def memory_hog():
    memory_usage = psutil.virtual_memory().available
    hog = np.zeros((memory_usage, 1000), dtype=np.int8)
    while True:
        pass

if __name__ == "__main__":
    print("Iniciando o experimento de carga de memória...")
    memory_hog()