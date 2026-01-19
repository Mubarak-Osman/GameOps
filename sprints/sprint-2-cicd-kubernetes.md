---
### Sprint 2
---

#### Zeitraum

<table>
  <thead>
    <tr>
      <th style="background-color:#f2f2f2;">Period</th>
      <th style="background-color:#f2f2f2;">Task</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="color:#2E86C1;">17.011.2025 – 07.12.2025</td>
      <td style="color:#117A65;">CI/CD Pipeline & Kubernetes Deployment</td>
    </tr>

  </tbody>
</table>

---
#### Sprintziel

Die CI/CD-Pipeline für automatisiertes Bauen, Testen und Pushen von Docker-Containern einrichten und die Kubernetes-Deployment-Struktur definieren, sodass die Anwendung zuverlässig auf Minikube ausgeführt und über NodePort oder Ingress getestet werden kann.

---
#### CI/CD Pipeline & Kubernetes Deployment

![CI/CD Pipline](images/ci-cd.png)

---
![Kubernets](images/kubernets.png)

---

##### 🟣 User Story 8: **Automatisierten Docker-Image-Build einrichten** <a name="user-story-8"></a> 

**Als** Entwickler  
**möchte ich** einen automatischen Build-Prozess für das GameOps-Web-Frontend  
**damit** bei jedem Commit auf den `main`-Branch ein aktuelles und konsistentes Docker-Image erzeugt wird.

**Akzeptanzkriterien:**

- Workflow startet bei jedem Push auf `main`.  
- Die Dateien `README.md` und `images/**` werden ignoriert.  
- Podman wird auf dem GitHub-Runner installiert.  
- Das Docker-Image wird erfolgreich über `podman build` erzeugt.  
- Fehlerhafte Builds stoppen die Pipeline.
---

##### 🟣 User Story 9: **Qualität durch Tests sicherstellen** <a name="user-story-9"></a> 

**Als** DevOps Engineer  
**möchte ich** Tests in die CI-Pipeline integrieren  
**damit** fehlerhafte Artefakte frühzeitig erkannt und nicht in die Registry oder ins Deployment gelangen.

**Akzeptanzkriterien:**

- Tests werden vor dem Push-Schritt ausgeführt.  
- Die Pipeline bricht bei fehlerhaften Tests ab.  
- Testergebnisse sind im CI-Log sichtbar.  
- Erfolgreiche Tests sind Voraussetzung für die weiteren Schritte.
---

##### 🟣 User Story 10: **Container-Images automatisch in Docker Hub veröffentlichen** <a name="user-story-10"></a> 

**Als** DevOps Engineer  
**möchte ich** das gebaute Docker-Image automatisch in Docker Hub pushen  
**damit** Minikube und andere Systeme immer auf das neueste Image zugreifen können.

**Akzeptanzkriterien:**

- Docker Hub Login erfolgt sicher über GitHub Secrets.  
- Image wird mit Tag `latest` nach Docker Hub übertragen.  
- Push schlägt bei Authentifizierungsfehlern nicht stillschweigend fehl.  
- Push findet nur statt, wenn Build (und Tests) erfolgreich waren.

---

##### 🟣 User Story 11: **Container-Images automatisch in Docker Hub veröffentlichen** <a name="user-story-11"></a> 

**Als** DevOps Engineer  
**möchte ich** nach einem erfolgreichen Build das Deployment automatisch auf Minikube aktualisieren  
**damit** die Anwendung kontinuierlich bereitgestellt und ohne manuelle Schritte aktualisiert wird.

**Akzeptanzkriterien:**

- Deployment startet nur, wenn der Build & Push erfolgreich war.  
- Self-hosted Runner nutzt das lokale `~/.kube/config`.  
- Minikube lädt das neueste Image (`minikube image pull`).  
- Kubernetes Deployment- und Service-Dateien werden erfolgreich angewendet.  
- Die Anwendung ist im Minikube-Cluster erreichbar.
---

##### 🟣 User Story 12: **Kubernetes-Manifeste erstellen** <a name="user-story-12"></a> 

**Als** DevOps Engineer  
**möchte ich** Kubernetes-Manifeste für Deployment, Service und ConfigMap schreiben  
**damit** die containerisierte Anwendung korrekt im Cluster laufen kann.

**Akzeptanzkriterien:**
- Deployment definiert die Container, Replikas und Labels.  
- Service verbindet Pods und stellt Ports bereit.  
- ConfigMap enthält Konfigurationswerte, die von Containern genutzt werden können.  
- YAML-Dateien sind syntaktisch korrekt und fehlerfrei.

---
##### 🟣 User Story 13: **Container auf Minikube deployen** <a name="user-story-13"></a> 

**Als** DevOps Engineer  
**möchte ich** die erstellten Kubernetes-Manifeste auf einem lokalen Minikube-Cluster anwenden  
**damit** die Anwendung lokal getestet und weiterentwickelt werden kann.

**Akzeptanzkriterien:**

- Alle Ressourcen (Pods, Deployments, Services) werden erfolgreich erstellt.  
- Container starten ohne Fehler.  
- Replikas laufen wie in der Deployment-Definition vorgesehen.  
- Minikube Cluster ist erreichbar und einsatzbereit.
---

##### 🟣 User Story 14: **Container auf Minikube deployen** <a name="user-story-14"></a> 

**Als** DevOps Engineer  
**möchte ich** die Anwendung über NodePort oder Ingress im Browser zugänglich machen  
**damit** ich die Funktionalität der Anwendung testen kann.

**Akzeptanzkriterien:**

- NodePort oder Ingress ist korrekt konfiguriert.  
- Die Anwendung ist über `localhost:<nodePort>` oder über eine Ingress-URL erreichbar.  
- HTTP-Anfragen werden erfolgreich beantwortet.  
- Änderungen am Deployment sind sichtbar, wenn die App aktualisiert wird.

---
##### Sprint Backlog


| Nr. | Bereich                  | User Story                                                        | Status   |
|-----|--------------------------|------------------------------------------------------------------|----------|
| 8   | CI/CD Build              | [Automatisierter Docker-Image-Build](#user-story-8)              | ✅ Done  |
| 9  | Qualitätssicherung       | [Tests im CI-Workflow integrieren](#user-story-9)                | ✅ Done  |
| 10   | Artifact Delivery        | [Image nach Docker Hub pushen](#user-story-10)                     | ✅ Done  |
| 11   | Deployment Automation    | [Deployment auf Minikube automatisieren](#user-story-11)           | ✅ Done  |
| 12   | Kubernetes Setup         | [Kubernetes-Manifeste erstellen](#user-story-12)                  | ✅ Done  |
| 13   | Deployment auf Minikube  | [Container auf Minikube deployen](#user-story-13)                 | ✅ Done  |
| 14   | Testing & Exposure       | [Anwendung über NodePort oder Ingress testen](#user-story-14)     | ✅ Done  |

---
#### 🏁 Sprint Review
---

##### ✅ Was wurde erreicht?
- GitHub Actions Workflow für automatisierten Docker-Image-Build wurde erstellt.  
- Tests wurden in die CI-Pipeline integriert (grundsätzliche Struktur).  
- Container-Image wurde erfolgreich zu Docker Hub gepusht.  
- Deployment auf Minikube nach erfolgreichem Build automatisiert.  
- Kubernetes-Manifeste (Deployment, Service) für `gameops` erstellt.  
- Container auf Minikube erfolgreich deployed und gestartet.  
- Cluster mit Lens visualisiert, Pods, Deployments und Services laufen korrekt.  
- Anwendung über NodePort im Browser getestet und erreichbar.

---

##### ⚠️ Herausforderungen
- CI/CD-Pipeline musste für Podman konfiguriert werden, Unterschiede zu Docker berücksichtigen.  
- Minikube-Pull des Images von Docker Hub erforderte korrekte Authentifizierung und Tagging.  
- Lokale Testumgebung (Minikube) war auf manchen Systemen initial fehleranfällig.  
- Lens zeigte teilweise Pods erst verspätet nach Deployment an.

---

##### 🎓 Lessons Learned
- Automatisierte Pipelines erhöhen Stabilität und sparen Zeit bei wiederholten Builds.  
- Lokale Minikube-Tests helfen, Deployment-Probleme früh zu erkennen.  
- Lens ist hilfreich für schnelle visuelle Kontrolle von Cluster-Ressourcen.  
- NodePort-Services ermöglichen einfache Browser-Tests ohne komplexe Ingress-Konfiguration.

---
#### 🔍 Sprint Retrospektive
---

##### ✅ Was lief gut?
- CI/CD-Workflow konnte termingerecht implementiert werden.  
- Deployment auf Minikube funktionierte nach Anpassungen zuverlässig.  
- Kubernetes-Ressourcen liefen stabil im Cluster.  
- Team konnte Änderungen schnell testen und validieren.

---
##### ⚠️ Was lief nicht gut?
- Erstkonfiguration von Podman und Minikube war zeitaufwendig.  
- Authentifizierung bei Docker Hub-Push verursachte initial Fehler.  
- Dokumentation der genauen Schritte für Self-Hosted Runner musste mehrfach angepasst werden.

---
##### 🚀 Verbesserungsmöglichkeiten
- Standardisierte CI/CD-Vorlage für Podman/Docker einführen.  
- Checkliste für Minikube-Setup und NodePort-Konfiguration erstellen.  
- Automatisierte Tests für Deployment- und Service-Status im Cluster implementieren.