#!/bin/sh
sudo apt-get install cowsay -y
cowsay -f dragon "Run im a dragon">> dragon.txt
grep -i "dragon" dragon.txt
cat dragon.txt
ls -ltra