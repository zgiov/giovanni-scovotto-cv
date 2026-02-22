# Giovanni Scovotto - Curriculum Vitae

[![Build Status](https://github.com/zgiov/giovanni-scovotto-cv/actions/workflows/main.yml/badge.svg)](https://github.com/zgiov/giovanni-scovotto-cv/actions/workflows/main.yml)
[![Last Updated](https://img.shields.io/github/release-date/zgiov/giovanni-scovotto-cv?label=Last%20Updated&color=00A388)](https://github.com/zgiov/giovanni-scovotto-cv/releases)

This repository holds the LaTeX source code for my CV, built on top of the [Awesome CV](https://github.com/posquit0/Awesome-CV) template. 

Instead of manually compiling the document and updating the hosted file every time I make a typo fix, I built a fully automated CI/CD pipeline to handle the deployment.

## 📥 Download the latest version

You can always find the most up-to-date, compiled PDF here:
👉 **[giovanniscovotto.eu.org/cv](https://giovanniscovotto.eu.org/cv)**

## ⚙️ How the pipeline works

Whenever I push a new commit to the `main` branch, a custom GitHub Actions workflow is triggered:

1. **Build:** The workflow spins up a lightweight environment and compiles the `.tex` file into a PDF using XeLaTeX.
2. **Release:** It automatically generates a new GitHub Release containing the compiled PDF, tagged with the current date and time for version control.
3. **Cloud Deployment:** A Python script authenticates via a Google Cloud Service Account and pushes the new PDF to Google Drive. It specifically *updates* the existing file ID rather than creating a new one, ensuring the public permalink never breaks.
4. **Notification:** Finally, it sends an HTML-formatted confirmation email to my inbox with the deployment details and quick links.

## 🛠️ Built with
* **LaTeX (XeLaTeX)** for typesetting.
* **GitHub Actions** for CI/CD automation.
* **Python (google-api-python-client)** for the Drive integration.