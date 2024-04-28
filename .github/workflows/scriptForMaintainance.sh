#!/bin/bash

echo "Updating package repositories and upgrading installed packages..."
sudo apt update && sudo apt upgrade -y

echo "Cleaning up temporary files..."
sudo apt autoclean
sudo apt autoremove -y


echo "Maintenance tasks completed at $(date)" > maintenance_log.txt
