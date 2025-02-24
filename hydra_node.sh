#!/bin/bash

# Display the banner
cat << "EOF"
DEATH SPIDER
HYDRA NODE INSTALLER 💀
                                                          
EOF

echo "🚀 Cloning the HydraDAEMON repository..."
git clone https://github.com/hydren-dev/HydraDAEMON

if [ $? -ne 0 ]; then
  echo "❌ Failed to clone the repository."
  exit 1
fi

echo "📂 Changing directory to HydraDAEMON..."
cd HydraDAEMON || { echo "❌ Failed to change directory to HydraDAEMON."; exit 1; }

echo "📦 Installing dependencies..."
npm install

# Prompt the user for any custom npm command
read -rp "🔧 Enter any custom npm command to run (or press Enter to skip): " custom_npm_cmd

if [ -n "$custom_npm_cmd" ]; then
  echo "⚙️ Running custom npm command: $custom_npm_cmd"
  "$custom_npm_cmd" || { echo "❌ Failed to run the custom npm command."; exit 1; }
else
  echo "⏩ Skipping custom npm command."
fi

echo "🚀 Starting HydraDAEMON..."
node .

echo "📢 DEATH SPIDER NODE INSTALLED"
