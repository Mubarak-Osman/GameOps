
---
### Sprint 1
---
#### Zeitraum

<table>
  <thead>
    <tr>
      <th style="background-color:#f2f2f2;">Period</th>
      <th style="background-color:#f2f2f2;">Sprint</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="color:#2E86C1;">10.11.2025 – 17.11.2025</td>
      <td style="color:#117A65;">Game Frontend Development and Containerization</td>
    </tr>
  </tbody>
</table>

---
#### Sprintziel
**Game Frontend Containerization:** Entwicklung und Containerisierung des Tic-Tac-Toe Frontends. Fokus liegt auf dem Aufbau einer klar strukturierten Projektverzeichnisstruktur, der Erstellung des Frontend-UI-Codes (HTML, CSS, JS), der Containerisierung mit Docker (Containerfile) sowie dem Testen des Containers lokal, um eine stabile Basis für zukünftiges Deployment auf Kubernetes zu schaffen.

---
#### 🖥️📦 User Stories - Game Frontend Development & Containerization
---
![InfrastructureSetup](images/Game-Frontend%20Development-Containerization.png)

---

##### 🟣 **User Story 4: Game Frontend UI entwickeln** <a name="user-story-4"></a>  
**Als** Entwickler  
**möchte ich** die Benutzeroberfläche des Spiels entwickeln  
**damit** die Spieler eine funktionale und ansprechende UI zum Spielen haben.

**Akzeptanzkriterien:**  
- HTML, CSS und JS für das Tic-Tac-Toe-Frontend sind geschrieben.  
- Die UI kann lokal im Browser getestet werden und reagiert korrekt auf Spielerinteraktionen.  
- Grundlegende Layout- und Designrichtlinien sind umgesetzt.

---

##### 🟣 **User Story 5: Entwicklungsumgebung und Projektstruktur aufsetzen** <a name="user-story-5"></a>  
**Als** Entwickler  
**möchte ich** die Projektstruktur klar organisieren  
**damit** die Wartbarkeit und Erweiterbarkeit des Frontends gewährleistet ist.

**Benötigte Verzeichnisse:**  
- `.github/workflows/` – CI/CD-Workflows  
- `src/assets/` – HTML, CSS, JS  
- `images/` – Dokumentation bilder  
- `k8s/` – Kubernetes-Deployment- und Service-Dateien  
- `scripts/` – Hilfsskripte für Setup oder Deployment  
- `Containerfile` – Dockerfile für das Frontend  
- `README.md` – Projektdokumentation

**Akzeptanzkriterien:**  
- Ordnerstruktur ist erstellt und sauber dokumentiert.  
- Teammitglieder können die Dateien problemlos finden und erweitern.

---

##### 🟣 **User Story 6: Frontend mit Docker containerisieren** <a name="user-story-6"></a>  
**Als** Entwickler  
**möchte ich** das Frontend in einem Docker-Container laufen lassen  
**damit** wir es konsistent lokal und später in Kubernetes ausführen können.

**Dockerfile** (bereits geschrieben):

```
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
---
##### 🟣 User Story 7: Test Frontend Container Locally <a name="user-story-7"></a>
**Als** Entwickler  
**möchte ich** den Frontend-Container lokal starten und testen,  
**damit** sichergestellt ist, dass die Applikation korrekt läuft und alle Dateien richtig eingebunden sind.

**Akzeptanzkriterien:**
- Der Container kann lokal gestartet werden (z. B. `podman start`).  
- Die HTML-, CSS- und JS-Dateien werden korrekt geladen und die UI funktioniert erwartungsgemäss.  
- Der Container lauscht auf dem vorgesehenen Port (z. B. 80) und ist über den Browser erreichbar.  
- Eventuelle Fehler im Container oder Pfadprobleme werden erkannt und behoben.  
---
#### Sprint Backlog

| Nr. | Bereich            | User Story                                           | Status   |
|-----|--------------------|------------------------------------------------------|----------|
| 4   |  Frontend Dev | [Game Frontend UI entwickeln](#user-story-4)                  | ✅ Done  |
| 5   | Project Setup | [Entwicklungsumgebung & Projektstruktur aufsetzen](#user-story-5)      | ✅ Done  |
| 6   | Containerization | [Frontend mit Docker containerisieren](#user-story-6)    | ✅ Done  |
| 7   | Containerization | [Frontend Container lokal testen](#user-story-7)    | ✅ Done  |
---
#### 🏁 Sprint Review
---

##### ✅ Was wurde erreicht?
- Frontend UI für Tic-Tac-Toe wurde erfolgreich entwickelt.  
- Projektstruktur mit `.github/workflows/`, `src/assets/`, `images/`, `k8s/` und `scripts/` ist aufgebaut.  
- Dockerfile (Containerfile) für das Frontend erstellt und Container lokal getestet.  
- Frontend-Container läuft fehlerfrei auf Port 80.  
---
##### ⚠️ Herausforderungen
- Erste Abstimmung zur Projektstruktur benötigte etwas Zeit.  
- Pfade im Containerfile mussten mehrfach angepasst werden, um alle Dateien korrekt zu kopieren.  
- Lokaler Containerstart war auf einigen Systemen zunächst fehleranfällig (z. B. Port-Konflikte).  
---
##### 🎓 Lessons Learned
- Saubere Projektstruktur erleichtert die spätere Weiterentwicklung und Containerisierung.  
- Containerfile frühzeitig testen, um Build- und Laufzeitprobleme zu vermeiden.  
- Dokumentation von Pfaden und Container-Ports spart Zeit bei Teamtests.  
---
#### 🔍 Sprint Retrospektive
---

##### ✅ Was lief gut?
- Frontend-Code wurde termingerecht fertiggestellt.  
- Containerfile funktionierte nach einigen Anpassungen problemlos.  
- Team konnte schnell lokal mit dem Container arbeiten.  
- Dokumentation der Projektstruktur wurde parallel gepflegt.  
---
##### ⚠️ Was lief nicht gut?
- Lokaler Containerstart war teilweise fehleranfällig.  
- Abstimmung bei Verzeichnisstruktur und Containerfile erforderte Nachbesserungen.  
---
##### 🚀 Verbesserungsmöglichkeiten
- Standardisierte Vorlage für Containerfile und Projektstruktur einführen.  
- Portkonflikte frühzeitig prüfen und dokumentieren.  
- Testcontainer auf mehreren Systemen validieren, bevor der Sprint endet.