#!/bin/bash
# Função para matar um processo pelo nome
kill_process() {
    local process_name="$1"
    pkill -x "$process_name"
    echo "O processo $process_name foi encerrado."
}

# Nomes dos processos a serem monitorados
processes=("cpu_experiment.py" "memory_experiment.py")

# Loop para monitorar os processos
for process_name in "${processes[@]}"; do
    if pgrep -x "$process_name" > /dev/null; then
        echo "Processo $process_name encontrado."

        # Espera 1 minuto
        sleep 60

        # Verifica novamente se o processo está em execução após 1 minuto
        if pgrep -x "$process_name" > /dev/null; then
            # Se o processo ainda estiver em execução após 1 minuto, mata-o
            kill_process "$process_name"
        else
            echo "O processo $process_name foi concluído antes de 1 minuto."
        fi
    else
        echo "Processo $process_name não encontrado."
    fi
done