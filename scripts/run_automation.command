#!/bin/bash

# 1. Move to your project directory
PARENT_DIR=$(cd "$(dirname "$0")"; pwd)
cd "$PARENT_DIR"

# 2. Activate the virtual environment
source .venv/bin/activate

# 3. Run the Python script
python3 Scraping_data_ban_Pos.py

# 4. Keep the terminal open to see the result (Optional)
echo "---------------------------------------"
echo "Process finished. Press Enter to close."
read
