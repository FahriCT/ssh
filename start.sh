#!/bin/bash

echo "Memulai Pearl Miner di background..."
/app/miner &  

echo "Memulai dummy HTTP server di port 8080..."
# Server ini menjaga container tetap hidup dan lolos health-check Cerebrium
python3 -m http.server 8080
