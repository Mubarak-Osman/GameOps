
---
### Sprint 0
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
      <td style="color:#2E86C1;">01.11.2025 – 10.11.2025</td>
      <td style="color:#117A65;">Project Setup</td>
    </tr>
  </tbody>
</table>

---
#### Sprintziel

**Project Setup:**
Das Projekt initialisieren, die technische Basisstruktur festlegen und die notwendigen Repositories, Tools und Workflows zur Zusammenarbeit im Team aufsetzen.

---
#### 🛠️ User Stories – Project Setup
---

![InfrastructureSetup](../images/project-setup.png)

---
##### 🟣 User Story 1: GitHub-Repository einrichten <a name="user-story-1"></a>
**Als** Entwickler  
**möchte ich** ein GitHub-Repository erstellen,  
**damit** wir den Code versionieren und gemeinsam bearbeiten können.

**Akzeptanzkriterien:**
- Ein Repository mit dem Namen GameOps ist unter der richtigen Organisation oder dem richtigen Account vorhanden.
- Eine README.md, .gitignore und eine passende Lizenzdatei sind erstellt.
- Zugriffsrechte und Branch-Protection-Regeln sind korrekt konfiguriert.
---

##### 🟣 User Story 2: Verzeichnisstruktur organisieren <a name="user-story-2"></a>
**Als** Entwickler  
**möchte ich** Die Repository-Struktur wird klar und einheitlich aufgebaut, um die Wartbarkeit und Übersichtlichkeit zu gewährleisten.  
**damit** eine gemeinsame technische Grundlage besteht.

**Benötigte Verzeichnisse:**
- app/ – Applikationsquellcode
- deployment/ – Deployment-Skripte und -Konfigurationen
- .github/workflows/ – CI/CD-Workflows und Automatisierungen
- docs/ – Projektdokumentation

**Akzeptanzkriterien:**
- Die oben genannten Ordner sind im Repository vorhanden.

---

 ##### 🟣 User Story 3: Lokale Entwicklungs-Tools installieren und konfigurieren <a name="user-story-3"></a>

**Als** Entwickler  
**möchte ich** Entwicklung notwendigen Tools installieren
**damit** wir unsere Infrastruktur aufbauen können.

**Tools**

- **Docker** – Zum Containerisieren und lokalen Ausführen der Applikation

- **Minikube** – Zum Simulieren einer Kubernetes-Umgebung

- **Lens** – Zur Verwaltung und Visualisierung von Kubernetes-Ressourcen

**Akzeptanzkriterien:**
- Docker, Minikube und Lens sind lokal installiert und funktionsfähig.
- Die Grundfunktionen jedes Tools (z. B. Start eines Testcontainers oder lokalen Clusters) wurden erfolgreich überprüft.
---
#### Sprint Backlog


| Nr. | Bereich            | User Story                                           | Status   |
|-----|--------------------|------------------------------------------------------|----------|
| 1   | Project Setup      | [GitHub-Repository einrichten einrichten](#user-story-1)       | ✅ Done  |
| 2   | Project Setup      | [Verzeichnisstruktur organisieren definieren](#user-story-2)          | ✅ Done  |
| 3   | Project Setup      | [Lokale Entwicklungs-Tools installieren und konfigurieren](#user-story-3)                               | ✅ Done  |

---
#### 🏁 Sprint Review
---
##### ✅ Was wurde erreicht?
- Neues **GitHub-Repository `GameOps`** wurde erfolgreich erstellt und konfiguriert.  
- Klare **Projektstruktur** mit den Verzeichnissen `app/`, `deployment/`, `.github/workflows/` und `docs/` wurde angelegt.  
- **README.md**, `.gitignore` und Lizenzdatei wurden hinzugefügt.  
- **Docker**, **Minikube** und **Lens** wurden lokal installiert und erfolgreich getestet.  
- Grundlegende **CI/CD-Struktur** vorbereitet (Workflows-Ordner vorhanden).  
---
##### ⚠️ Herausforderungen
- Lokale Installation von **Minikube** benötigte zusätzliche Anpassungen an der Umgebung.  
- Erste **Repository-Zugriffsrechte** mussten nachträglich korrigiert werden.  
- Zeitplanung für das lokale Setup wurde leicht unterschätzt.  
---
##### 🎓 Lessons Learned
- Frühzeitige Planung der lokalen Entwicklungsumgebung spart viel Abstimmungsaufwand.  
- Zugriffs- und Berechtigungsstrukturen sollten vor dem Start klar definiert sein.  
- Gemeinsame Dokumentation im `docs/`-Ordner erleichtert zukünftige Einarbeitungen.  
---

#### 🔍 Sprint Retrospective
---
##### ✅ Was lief gut?
- Das **Repository** wurde sauber erstellt und ist klar strukturiert.  
- Die Teammitglieder konnten **Docker**, **Minikube** und **Lens** erfolgreich einrichten.  
- Zusammenarbeit im Team war effizient und gut koordiniert.  
- Dokumentation wurde parallel gepflegt.  
---
##### ⚠️ Was lief nicht gut?
- Die Installation von **Minikube** war auf einigen Geräten fehleranfällig.  
- Zugriffsrechte auf das GitHub-Repository mussten manuell nachjustiert werden.  
- Die Zeit für lokale Tests wurde etwas unterschätzt.  
---
##### 🚀 Verbesserungsmöglichkeiten
- Künftige lokale Setups sollten durch eine **standardisierte Installationsanleitung** unterstützt werden.  
- **Repository-Berechtigungen** direkt zu Sprintbeginn festlegen.  
- Einen **kurzen Testlauf der Tool-Installation** im Voraus einplanen, um mögliche Fehlerquellen früh zu erkennen.  