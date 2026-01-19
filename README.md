
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
## 🏃‍♂️ Sprint-Dokumentation (Agiles Vorgehen)
---

Die Entwicklung von **GameOps** erfolgte iterativ nach einem **agilen Vorgehensmodell**.  
Das Projekt ist in mehrere **Sprints** unterteilt, die jeweils klar definierte Ziele, User Stories, Akzeptanzkriterien sowie eine Review- und Retrospektive enthalten.

Jeder Sprint dokumentiert:
- das **Sprintziel** und den fachlichen Fokus  
- die umgesetzten **User Stories** inkl. Akzeptanzkriterien  
- den **Sprint Backlog** mit Status  
- ein **Sprint Review**  
- eine **Retrospektive** mit Lessons Learned

Diese Struktur macht den Projektfortschritt sowie das DevOps-Vorgehen transparent und nachvollziehbar.

---
### 📌 Übersicht der Sprints
---
- **Sprint 0 – Project Setup**  
  Initiales Setup, Repository-Struktur und Tooling.  
  👉 [Sprint 0 ansehen](./sprints/sprint-0-project-setup.md)

- **Sprint 1 – Frontend Development & Containerization**  
  Entwicklung des Tic-Tac-Toe-Frontends und Containerisierung.  
  👉 [Sprint 1 ansehen](./sprints/sprint-1-frontend-containerization.md)

- **Sprint 2 – CI/CD & Kubernetes Deployment**  
  Automatisierte Pipeline und Deployment auf Minikube.  
  👉 [Sprint 2 ansehen](./sprints/sprint-2-cicd-kubernetes.md)

- **Sprint 3 – Observability & Documentation**  
  Monitoring, Dokumentation und Demo.  
  👉 [Sprint 3 ansehen](./sprints/sprint-3-observability-documentation.md)

---

## 🧱 Architekturübersicht

![alt text](./images/infra.drawio.png)

---
## 🧭 Systemabgrenzung (SEUSAG)
---
## Verzeichnisstruktur

```
📁 GameOps/
├── .github/
│   └── workflows/
│       └── ci‑cd.yml  
├── images/ 
├── k8s/
│   ├── deployment.yaml  
│   └── service.yaml  
├── scripts/
│   └── predeploy‑setup.sh  
├── src/
│   ├── assets/
│   │   ├── css/
│   │   │   └── tic‑tac‑toe.css  
│   │   ├── js/
│   │   │   └── tic‑tac‑toe.js  
│   └── index.html  
├── Containerfile  
└── README.md  
```
---
## 🧑‍💻 Implementierung
---
### Build the Game Frontend UI

Der folgende Abschnitt beschreibt den Aufbau des Frontends für das Tic-Tac-Toe-Spiel.  
Die Benutzeroberfläche besteht aus drei Kernbereichen:

- **HTML** – Struktur & UI-Elemente  
- **CSS** – Layout & Styling  
- **JavaScript** – Spiellogik & Interaktionen  

---
#### HTML – Struktur der Benutzeroberfläche

Die Grundstruktur des Spiels – Spielfeld, Container und UI-Elemente – ist in der index.html definiert.

 **📄 Datei ansehen:**  [➤ index.html öffnen](/src/assets/index.html)

---

#### CSS – Styling & Layout
Das Layout, Farben, Animationen und Responsive Design werden in der CSS-Datei umgesetzt.
Sie definiert unter anderem das Spielfeld, Hover-Effekte und Spieler-Markierungen.

**🎨 CSS-Datei ansehen:**  [➤ tic-tac-toe.css öffnen](/src/assets/css/tic-tac-toe.css)

---

#### JavaScript – Spiellogik & Interaktionen

Die komplette Spielmechanik (Spielzüge, Gewinnlogik, Neustart-Funktion etc.) wird über die JavaScript-Datei gesteuert.
Sie verbindet die UI mit der Spiel-Engine.
**⚙️ JavaScript-Datei ansehen:**  [➤ tic-tac-toe.js öffnen](/src/assets/js/tic-tac-toe.js)

---
### 🕹️ Tic-Tac-Toe Frontend lokal mit Podman ausführen

Dieses Projekt stellt das **Tic-Tac-Toe-Frontend** über einen leichtgewichtigen **Nginx-Container** bereit.  
Mit **Podman** kannst du die Anwendung **lokal, isoliert und portabel** ausführen, ohne dass zusätzliche Webserver oder Entwicklungswerkzeuge auf deinem System installiert sein müssen.

Dieses Setup ist ideal für:

- Schnelles Testen und Entwickeln der Anwendung  
- Präsentationen oder Demos  
- Konsistentes Verhalten auf verschiedenen Rechnern
---
####  📦 Containerfile (Nginx-basierter Webserver)

Das Containerfile erstellt ein schlankes Image auf Basis von `nginx:alpine`.  
Es entfernt die Standard-Nginx-HTML-Dateien und kopiert die eigenen statischen Dateien (HTML, CSS, JS) hinein:

```dockerfile
# Use a lightweight Nginx image
FROM nginx:alpine

# Remove the default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files into Nginx
COPY src/assets/index.html /usr/share/nginx/html/
COPY src/assets/css/tic-tac-toe.css /usr/share/nginx/html/
COPY src/assets/js/tic-tac-toe.js /usr/share/nginx/html/ 

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
```

##### 🔹 Erklärung der einzelnen Schritte

FROM nginx:alpine – Nutzt ein leichtes, stabiles Nginx-Image als Basis.

RUN rm -rf /usr/share/nginx/html/ – Entfernt die Standard-Nginx-Seite.

COPY … – Kopiert HTML, CSS und JS ins Nginx-Webverzeichnis.

EXPOSE 80 – Öffnet den Standard-HTTP-Port im Container.

CMD ["nginx", "-g", "daemon off;"] – Startet Nginx im Vordergrund, damit der Container aktiv bleibt.

---

##### 🛠️ Image bauen

Baue das lokale Image:

```
podman build -t gameops .
```
- Das Image heisst gameops
- Enthält alle Frontend-Dateien und einen Nginx-Webserver
---

##### ▶️ Container starten

Starte den Container und mappe den Container-Port 80 auf Host-Port 8080:

```
podman run -d -p 8080:80 --name gameops-ui gameops
```
- -d → Container läuft im Hintergrund

- -p 8080:80 → Host-Port 8080 auf Container-Port 80
- --name gameops-ui → Name des laufenden Containers

---
##### 🌐 Anwendung öffnen

Öffne deinen Browser: 

```
http://localhost:8080
```
Du solltest nun das Tic-Tac-Toe-Frontend sehen und direkt spielen können.

![alt text](./images/tic-tac-toe.png)

---
##### 📊 Containerstatus prüfen

Um zu prüfen, ob der Container läuft:

```
podman ps
```
| Container  | Status  | Port | Image   |
| ---------- | ------- | ---- | ------- |
| gameops-ui | RUNNING | 8080 | gameops |

###### In der Podman-App
- Öffne die Podman Desktop-App.  
- Unter **Container** siehst du alle laufenden Container, deren **Status**, **Name** und **zugeordnete Ports**.  
- So kannst du schnell prüfen, ob der Tic-Tac-Toe-Container aktiv ist.
  
![alt text](./images/podman.png)

---
### Build & Deploy GameOps

Dieser Abschnitt dokumentiert den **GitHub Actions Workflow**, der die GameOps Static Web-Anwendung automatisiert **baut, pusht und auf Minikube deployt**.  
Der Workflow sorgt dafür, dass neue Änderungen im `main`-Branch automatisch getestet und bereitgestellt werden.

---
#### 🛠️ Workflow Trigger

Der Workflow wird bei einem **Push auf den `main`-Branch** ausgelöst.  
Dateien, die keinen Deployment-Prozess betreffen, werden ignoriert:

- `README.md`  
- Alle Dateien im Verzeichnis `images/**`

```yaml
on:
  push:
    branches: [ main ]
    paths-ignore:
      - 'README.md'
      - 'images/**'
```
---
#### 🏗️ Build & Push Docker Image

**Zweck:** Container-Image erstellen und zu Docker Hub übertragen  
**Runner:** `ubuntu-latest` 

#####  Schritte

1. **Checkout des Codes**  
   Lädt den aktuellen Repository-Stand via `actions/checkout@v4`.
2. **Podman installieren**  
   Installiert Podman auf dem Runner, um Container zu bauen.
3. **Image bauen**  
   Das Image wird mit folgendem Tag erstellt:
4. **Login zu Docker Hub**  
Authentifizierung über GitHub Secrets (`DOCKERHUB_USERNAME` & `DOCKERHUB_TOKEN`).
5. **Image pushen**  
Überträgt das gebaute Image in Docker Hub.

```yaml
jobs:
build-and-push:
 runs-on: ubuntu-latest
 steps:
   - name: Checkout code
     uses: actions/checkout@v4
   - name: Install Podman
     run: |
       sudo apt-get update
       sudo apt-get install -y podman
   - name: Build Podman image
     run: |
       podman build -t docker.io/${{ secrets.DOCKERHUB_USERNAME }}/gameops:latest .
   - name: Login to Docker Hub
     run: echo "${{ secrets.DOCKERHUB_TOKEN }}" | podman login -u "${{ secrets.DOCKERHUB_USERNAME }}" --password-stdin docker.io
   - name: Push Podman image
     run: podman push docker.io/${{ secrets.DOCKERHUB_USERNAME }}/gameops:latest
  ```

---
#### 🏗️ Deploy to Minikube

**Zweck:** Container-Image vom Docker Hub ziehen und auf Minikube deployen  
**Runner:** self-hosted (lokal)  
**Abhängigkeit:** Läuft nur nach erfolgreichem Build & Push  

##### Schritte

1. **Checkout des Codes**  
   Lädt den aktuellen Repository-Stand.

2. **Pre-deployment Setup**  
   Führt das Skript `scripts/predeploy-setup.sh` aus.
```yaml
#!/usr/bin/env bash
set -e

mv ~/.kube/config ~/.kube/config.backup || true
minikube start --driver=podman
(cd /Users/mosman02/actions-runner && ./run.sh) &
``` 
  
   - Lokale Minikube-Umgebung für Tests bereitstellen.
   - Self-Hosted Runner vor Deployment verfügbar machen.
   - Bestehende kubeconfig schützen.
   - ***Weitere Infos:***  
👉 [Add Self-Hosted Runners – GitHub Docs](https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/add-runners)


3. **kubectl einrichten**  
   Nutzt `azure/setup-kubectl@v3` für die aktuelle Version.

4. **Lokale kubeconfig verwenden**  
   Zugriff auf Minikube über `~/.kube/config`.

5. **Image in Minikube ziehen**  
```
run: minikube image pull docker.io/${{ secrets.DOCKERHUB_USERNAME }}/gameops:latest
```
6. **Kubernetes Manifeste anwenden**  

  ```yaml 
     kubectl apply -f k8s/deployment.yaml --validate=false
     kubectl apply -f k8s/service.yaml --validate=false
  ```

```yaml
deploy-to-minikube:
runs-on: self-hosted
needs: build-and-push
steps:
 - name: Checkout code
   uses: actions/checkout@v4
 - name: Run pre-deployment setup
   run: bash ./scripts/predeploy-setup.sh
 - name: Set up kubectl
   uses: azure/setup-kubectl@v3
   with:
     version: 'latest'
 - name: Use local kubeconfig
   run: echo "Using local kubeconfig at $HOME/.kube/config"
 - name: Pull Docker image into Minikube
   run: minikube image pull docker.io/${{ secrets.DOCKERHUB_USERNAME }}/gameops:latest
 - name: Apply Kubernetes manifests
   run: |
     kubectl apply -f k8s/deployment.yaml --validate=false
     kubectl apply -f k8s/service.yaml --validate=false
```

##### 🔹 Vorteile

- Automatisierung: Jeder Push auf main löst Build & Deployment aus.

- Sicherheit: Docker Hub Credentials werden über GitHub Secrets geschützt.

- Flexibilität: Lokales Testen auf Minikube möglich.

- Transparenz: CI/CD-Logs zeigen Status von Build, Push und Deployment.

---
### 📦 Kubernetes Deployment & Service Dokumentation

Dieser Abschnitt beschreibt die Kubernetes-Manifeste, die verwendet werden, um die **GameOps Webanwendung** zu deployen und über einen **NodePort-Service** erreichbar zu machen.

---
#### 🏗️ Deployment (GameOps)

Das Deployment stellt sicher, dass immer zwei Pods laufen und die Anwendung stabil bereitgestellt wird.

[➤ deployment.yaml öffnen](k8s/deployment.yaml)


```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: gameops
  labels:
    app: gameops
spec:
  replicas: 2
  selector:
    matchLabels:
      app: gameops
  template:
    metadata:
      labels:
        app: gameops
    spec:
      containers:
        - name: gameops
          image: docker.io/3ubarak/gameops:latest
          imagePullPolicy: Always
          ports:
            - containerPort: 80
```
##### 🔍 Erklärung

- replicas: 2 → Zwei Pods laufen gleichzeitig.
- imagePullPolicy: Always → Immer die neueste Image-Version laden.
- containerPort: 80 → Die Anwendung läuft im Container auf Port 80.
- Labels verbinden Deployment, Pods und Services miteinander.
---
#### 🌐 Service (NodePort)

[➤ service.yaml öffnen](k8s/service.yaml)


Der Service macht die App extern erreichbar – ideal für lokale Tests über Minikube.
```yaml
apiVersion: v1
kind: Service
metadata:
  name: gameops-service
spec:
  selector:
    app: gameops
  type: NodePort
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
      nodePort: 30007
```
##### 🔍 Erklärung

- type: NodePort → Öffnet einen Port am Minikube-Host.
- port / targetPort → Service-Port 80 → Container-Port 80.
- nodePort: 30007 → Browserzugriff über Minikube-IP.
---
#### 🌍 Anwendung öffnen

*Minikube-IP abrufen:*
```
minikube ip
```

*Browser öffnen:*
```
http://<minikube-ip>:30007
```

*Dienst im Standardbrowser öffnen:*

```
minikube service gameops-service
```
---

---

---

