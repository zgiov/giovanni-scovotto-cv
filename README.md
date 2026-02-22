# 📄 Giovanni Scovotto - Curriculum Vitae

[![Compile and Publish CV](https://github.com/TUO-USERNAME/TUO-REPO/actions/workflows/main.yml/badge.svg)](https://github.com/zgiov/giovanni-scovotto-cv/actions/workflows/main.yml)
[![Ultimo Aggiornamento](https://img.shields.io/github/release-date/zio/giovanni-scovotto-cv?label=Ultimo%20Aggiornamento&color=00A388)](https://github.com/TUO-USERNAME/TUO-REPO/releases)

Benvenuto nel repository del mio Curriculum Vitae! Questo progetto contiene il codice sorgente in **LaTeX** del mio CV, basato sul template tipografico [Awesome CV](https://github.com/posquit0/Awesome-CV), ed è interamente gestito tramite un'infrastruttura di **Continuous Integration / Continuous Deployment (CI/CD)**.

## 🔗 Download Diretto
Il PDF compilato e costantemente aggiornato all'ultima versione è scaricabile tramite questo permalink:

👉 **[giovanniscovotto.eu.org/cv](https://giovanniscovotto.eu.org/cv)**

---

## 🚀 Automazione e CI/CD (GitHub Actions)
Questo repository non è un semplice archivio di testo, ma una pipeline automatizzata. Ogni volta che viene effettuato un `push` sul branch `main`, una GitHub Action dedicata esegue le seguenti operazioni:

1. **Compilazione Veloce:** Inizializza un ambiente LaTeX ottimizzato e compila il file sorgente `.tex` in PDF utilizzando `XeLaTeX`.
2. **Release e Versioning:** Genera automaticamente una nuova Release su GitHub come storico e backup, taggata con data e ora esatte della compilazione.
3. **Deploy su Google Drive:** Tramite le API di Google Cloud, uno script Python autenticato tramite Service Account sovrascrive il file precedente sul mio Google Drive. Questo garantisce che l'ID del file rimanga lo stesso e che il permalink pubblico non si rompa mai.
4. **Notifica Email:** La pipeline si conclude inviando un'email in formato HTML al mio indirizzo personale, confermando il successo del deploy e fornendo i link diretti per il controllo qualità.

## 🛠️ Tecnologie Utilizzate
* **LaTeX (XeLaTeX)** per il typesetting avanzato.
* **GitHub Actions** per l'orchestrazione della pipeline CI/CD.
* **Python & Google Drive API** per la distribuzione in cloud.
* **DNS Routing** per la gestione del permalink personalizzato.