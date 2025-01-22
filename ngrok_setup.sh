#!/bin/bash

# Démarre l'application Flask en arrière-plan
python app/routes.py &

# Lance ngrok pour exposer le port 5005
./ngrok http 8080
