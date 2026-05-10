#!/bin/bash

# 1. Generar el nuevo JSON
python3 generate_list.py

# 2. Subir a GitHub
git add data.json genres.json config.json
git commit -m "Update song list: $(date)"
git push origin main
