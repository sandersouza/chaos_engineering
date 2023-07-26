# experimento_cpu.py
import time
import multiprocessing

def worker():
    while True:
        pass

if __name__ == "__main__":
    num_processes = multiprocessing.cpu_count()
    processes = []

    print(f"Iniciando o experimento de carga de CPU com {num_processes} processos...")

    for _ in range(num_processes):
        process = multiprocessing.Process(target=worker)
        process.start()
        processes.append(process)

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        print("Encerrando o experimento...")
        for process in processes:
            process.terminate()
            process.join()
