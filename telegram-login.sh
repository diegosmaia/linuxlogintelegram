#!/bin/bash

##########################################################################
# Linux envio de alerta de login no Telegram
# Author: Diego Maia - diegosmaia@yahoo.com.br Telegram - @diegosmaia
##########################################################################

CURL="/usr/bin/curl"

USUARIO=$(whoami)

# O ID DO SEU USUARIO NO TELEGRAM
USER='150000000'

############################################
# O Bot-Token o codigo enviado pelo BotFather
############################################

BOT_TOKEN='161080402:AAGah3HIxM9jUr0NX1WmEKX3cJCv9PyWD58'

############################################
# Envio Mensagem de Texto do Alerta
############################################
${CURL} -k -s -c ${COOKIE} -b ${COOKIE} -s -X GET "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage?chat_id=${USER}&text=O usuario ${USUARIO} realizou login no servidor $HOSTNAME  Data:  $(date '+%d/%m/%Y-%H:%M:%S')  SSH: $SSH_CONNECTION"  > /dev/null

exit 0


