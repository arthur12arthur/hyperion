#!/bin/bash
set -e
TARGET=${1:-github-pages}
echo "Déploiement cible: $TARGET"

if [ "$TARGET" = "github-pages" ]; then
  # Branch gh-pages push (assumes repository configured)
  git add .
  git commit -m "chore: build $(date)" || true
  git push origin main
  echo "Pushed to main (adapt steps to push gh-pages if needed)"
elif [ "$TARGET" = "netlify" ]; then
  echo "Netlify: utilisez l'interface ou l'outil netlify-cli"
else
  echo "Cible inconnue: $TARGET"
fi
echo "Déploiement script terminé."
