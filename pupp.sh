#!/bin/bash

sudo apt update

sudo apt install -y \
  libgbm-dev \
  libx11-dev \
  libx11-xcb1 \
  libxcb1 \
  libxcomposite1 \
  libxcursor1 \
  libxdamage1 \
  libxi6 \
  libxtst6 \
  libnss3 \
  libxrandr2 \
  libgconf-2-4 \
  libasound2 \
  libatk1.0-0 \
  libatk-bridge2.0-0 \
  libgtk-3-0 \
  libpangocairo-1.0-0 \
  libpango-1.0-0 \
  libcairo2 \
  libdbus-1-3 \
  libdrm2

if ! command -v node &> /dev/null
then
    echo "Node.js belum terinstall, Installing Node.js & npm..."
    curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt install -y nodejs
else
    echo "Node.js sudah terinstall."
fi

echo "Installing Axios, Puppeteer and necessary plugins"
npm install axios puppeteer puppeteer-extra puppeteer-extra-plugin-stealth

echo "Install Selesai"
