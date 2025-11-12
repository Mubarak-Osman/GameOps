# GameOps
---
## 📉 Projektbeschreibung

Das Tic-Tac-Toe-Spiel wird aktuell lokal entwickelt und läuft nur für einen
Spieler.
Es fehlt die Möglichkeit, die Anwendung so zu gestalten, dass mehrere
Nutzer gleichzeitig spielen können.
Durch die Entwicklung einer skalierbaren Version in Kombination mit
Kubernetes, Containerisierung und CI/CD-Pipelines soll das Spiel
automatisiert bereitgestellt und horizontal skaliert werden, sodass viele
Spieler gleichzeitig eine stabile Spielerfahrung erhalten.

---

## 🎯 Ziele

* **Entwicklung und Containerisierung einer skalierbaren Tic-Tac-Toe-Webanwendung:**

  * Die Anwendung wird mit **HTML, CSS und JavaScript** entwickelt und mithilfe von **Docker bzw. Podman** containerisiert, um eine flexible, portable und reproduzierbare Bereitstellung zu ermöglichen.

* **Aufbau einer CI/CD-Pipeline mit GitHub Actions:**

  * Durch den Einsatz einer automatisierten Pipeline werden **Build-, Test- und Deployment-Prozesse** standardisiert und effizient gestaltet, wodurch manuelle Eingriffe minimiert und die Zuverlässigkeit erhöht werden.

* **Automatisierte Bereitstellung auf lokalem Kubernetes (Minikube):**

  * Die Bereitstellung der Anwendung erfolgt automatisiert über **Kubernetes-Manifeste** auf einer lokalen **Minikube-Umgebung**, um produktionsähnliche Bedingungen für Tests und Entwicklung zu schaffen.

* **Überwachung und Verwaltung mit Lens:**

  * Mithilfe von **Lens** wird die laufende Kubernetes-Umgebung grafisch überwacht, wodurch **Ressourcennutzung, Pod-Zustände und Logs** transparent und einfach nachvollziehbar sind.

* **Sicherstellung einer stabilen Mehrspielernutzung:**

  * Durch die **Skalierbarkeit der Container** und das **Ressourcenmanagement in Kubernetes** wird gewährleistet, dass mehrere Benutzer gleichzeitig spielen können, ohne dass die Performance oder Stabilität der Anwendung beeinträchtigt wird.
---

## 🤖💡💻 Verwendete Technologien

Ich verwende GitHub Actions für CI/CD, um Container mit Podman zu bauen, diese auf Docker Hub zu pushen und anschliessend mithilfe eines self-hosted Runners lokal auf Minikube bereitzustellen. Zur Überwachung des Clusters nutze ich Lens.

### GitHub & CI/CD
Alle Builds und Deployments werden über GitHub Actions automatisiert.
Das Repository enthält sowohl den Frontend-Code als auch die Kubernetes-Manifeste.

```
actions/checkout@v4
azure/setup-kubectl@v3
Runner-Version: 2.329.0
```

### Podman

Podman wird verwendet, um Container-Images zu erstellen und in Docker Hub zu pushen.

```
podman --version
podman version 5.4.0
```

### Docker Hub

Docker Hub dient als Container-Registry, um die erstellten Images zu speichern und für den Minikube-Cluster bereitzustellen.

```
Image: docker.io/<username>/gameops:latest
```

### Minikube & Kubernetes

Minikube wird lokal auf macOS M1 ausgeführt, um ein Kubernetes-Cluster bereitzustellen.
Über **kubectl** werden Deployments und Services angewendet.

```
minikube version
minikube version: v1.37.0
commit: 65318f4cfff9c12cc87ec9eb8f4cdd57b25047f3
```
```
kubectl version --client
Client Version: v1.34.1
Kustomize Version: v5.7.1
```

### Self-Hosted Runner

Der Runner läuft lokal auf macOS ARM64 und führt die Deployments auf Minikube aus.

```
macOS Sonoma 14.0
Architecture: arm64
```

### Lens

Lens wird verwendet, um das Minikube-Cluster visuell zu überwachen (Pods, Deployments, Logs und Services).

```
Lens Desktop 2024.x
```

### Frontend

Das Tic-Tac-Toe-Spiel besteht aus statischen Webdateien, die im Container bereitgestellt werden:

```
index.html
tic-tac-toe.js
tic-tac-toe.css
```

---

## 🛠️ Vorgaben, Methoden und Werkzeuge

### Agile, Kanban
Ich werde **Kanban** verwenden, um alle Aufgaben zu visualisieren und den Status jeder Aufgabe zu verfolgen. Der Status wird dabei in die folgenden Kategorien unterteilt:
- **Noch offen**: Aufgaben, die noch erledigt werden müssen.
- **In Bearbeitung**: Aufgaben, an denen gerade gearbeitet wird.
- **Review**: Aufgaben, die fertiggestellt wurden und überprüft werden müssen. 
- **Erledigt**: Aufgaben, die abgeschlossen sind.

Kanban hilft dabei, die Arbeit transparent und effizient zu organisieren und den Fortschritt kontinuierlich zu überwachen.

---
## 🧱 Architekturübersicht

![alt text](./images/infra.drawio.png)

---
## 🧭 Systemabgrenzung (SEUSAG)
---
## Verzeichnisstruktur

```
📁 GameOps/
│
├── Containerfile           
├── README.md               
│
├── index.html              
├── tic-tac-toe.css             
├── tic-tac-toe.js              
│
├── 📁 k8s/                 
│   ├── deployment.yaml
│   └── service.yaml
│
└── 📁 .github/
    └── workflows/
        └── ci-cd.yml   
```
---


