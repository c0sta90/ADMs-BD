#!/bin/bash

# Caminho do ficheiro a ser feito backup
ARQUIVO_ORIGINAL="/home/costa/Documents/Trabalhos/ADMs-BD/ficheiro.txt"
# Verifica se o ficheiro original existe
if [ ! -f "$ARQUIVO_ORIGINAL" ]; then
    clear
    echo "O ficheiro original não existe em: $ARQUIVO_ORIGINAL"
    exit 1
fi

# Diretório base onde os backups serão salvos
DIRETORIO_BACKUP_BASE="/home/costa/Documents/Trabalhos/ADMs-BD/backups"

# Data atual
ANO=$(date +"%Y")
#MES=$(date +"%m") mes em número
MES=$(date +"%B") # Nome do mês por extenso
DIA=$(date +"%d")

# Diretório completo com ano/mes/dia
DIRETORIO_BACKUP="$DIRETORIO_BACKUP_BASE/$ANO/$MES/$DIA"

# Cria o diretório de backup se não existir
mkdir -p "$DIRETORIO_BACKUP"

# Data e hora atual no formato YYYY-MM-DD_HH-MM-SS
DATA_HORA=$(date +"%Y-%m-%d_%H-%M-%S")

# Nome do ficheiro de backup
NOME_BACKUP="backup_${DATA_HORA}.txt"

# Copia o ficheiro para o diretório de backup com a data e hora
cp "$ARQUIVO_ORIGINAL" "$DIRETORIO_BACKUP/$NOME_BACKUP"

clear
echo "Backup criado em: $DIRETORIO_BACKUP/$NOME_BACKUP"