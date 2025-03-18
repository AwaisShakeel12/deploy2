#!/bin/bash

echo "🔧 Ensuring pip is installed..."
python3 -m ensurepip --default-pip

echo "⬆️ Upgrading pip..."
python3 -m pip install --upgrade pip

echo "📦 Installing dependencies..."
pip install -r requirements.txt

echo "🚀 Running Migrations..."
python3 manage.py migrate --noinput

echo "📂 Collecting Static Files..."
python3 manage.py collectstatic --noinput --clear

echo "✅ Build process completed successfully!"