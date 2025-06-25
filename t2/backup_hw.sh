#!/bin/bas
U_H="/home/osboxes"
B_DIR="/tmp/backup"
LOG_TAG="backup_script"

log_message(){
	logger -t "$LOG_TAG" "$1"
}

#основной код
rsync -a --delete "$U_H/" "$B_DIR/" > /dev/null 2>&1

if [ $? -eq 0 ]; then
	log_message "Бэкапы есть! Можно ждать премию!"
else 
	log_message "Какой криворукий баран это настраивал?"
fi
