# Linux - login e logout - send msg telegram
Enviar msg de alerta pelo telegram a cada login/logout no servidor

Copiar os arquivos para /usr/bin

Executar os comandos abaixo para adicionar o script nos arquivos de login e logout.

echo sh /usr/bin/telegram-logoff.sh >> /etc/bash.bash_logout  
echo sh /usr/bin/telegram-login.sh >> /etc/profile

Como fazer o Bot e pegar o seu USERID do Telegram

https://github.com/diegosmaia/zabbix-telegram/blob/master/Zabbix-Telegram-com-graficos.pdf
