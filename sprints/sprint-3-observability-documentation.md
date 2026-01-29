
---
### Sprint 3
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
      <td style="color:#2E86C1;">05.12.2025 – 14.12.2025</td>
      <td style="color:#117A65;">GameOps Observability & Documentation</td>
    </tr>

  </tbody>
</table>

---
#### Sprintziel

Ziel dieses Sprints ist es, die GameOps-Anwendung besser beobachtbar und stabil zu machen, indem wir ein Monitoring-Tool auswählen und implementieren, Ressourcenlimits und Liveness/Readiness-Probes konfigurieren, sowie die Deployment-Architektur dokumentieren und eine Präsentation/Demo vorbereiten.  

Dieser Sprint stellt sicher, dass:

- Pods überwacht werden können und Leistungskennzahlen sichtbar sind.  
- Ressourcen effizient zugewiesen sind und die Anwendung fehlertolerant läuft.  
- Alle Setup-Schritte, Architektur und CI/CD-Prozesse klar dokumentiert sind.  
- Eine Präsentation mit Live-Demo und Visualisierungen des Monitoring-Tools bereitsteht.

---
#### GameOps Observability & Documentation

![Monitoring](../images/monitoring.png)

---
##### 🟣 User Story 15: **Monitoring-Tools vergleichen und auswählen** <a name="user-story-15"></a>  

**Als** DevOps Engineer  
**möchte ich** Lens und Grafana + Prometheus vergleichen  
**damit** ich das geeignetste Tool für Echtzeit-Monitoring von Pods, Logs und Performance-Metriken auswählen kann.  

**Akzeptanzkriterien:**  

- Vergleichskriterien werden definiert (Echtzeit-Logs, Dashboards, Metriken).  
- Entscheidung für ein Tool dokumentiert.  
- Entscheidung basiert auf Stabilität, Übersichtlichkeit und Einsatz im lokalen Minikube-Cluster.  
---
##### 🟣 User Story 16: **Monitoring-Tool implementieren und überwachen** <a name="user-story-16"></a>  

**Als** DevOps Engineer  
**möchte ich** das ausgewählte Monitoring-Tool einrichten  
**damit** Pods, Logs und Ressourcen in Echtzeit überwacht werden können.  

**Akzeptanzkriterien:**  

- Tool ist installiert und konfiguriert (Lens oder Grafana + Prometheus).  
- Dashboards oder Visualisierungen zeigen Status, Logs und Metriken der Pods.  
- Alerts oder Hinweise bei Fehlfunktionen werden getestet.  

---
##### 🟣 User Story 17: **Setup und Architektur dokumentieren** <a name="user-story-17"></a>  

**Als** Entwickler / DevOps Engineer  
**möchte ich** die Deployment-Schritte, Architektur und CI/CD-Workflow dokumentieren  
**damit** andere Teammitglieder die Umgebung verstehen und reproduzieren können.  

**Akzeptanzkriterien:**  

- Alle Schritte zur Installation und Konfiguration sind dokumentiert.  
- Architekturdiagramme oder Schema der Cluster-Ressourcen sind vorhanden.  
- CI/CD-Pipeline mit Build, Push und Deployment ist beschrieben.
---
##### 🟣 User Story 18: **Präsentation und Demo vorbereiten** <a name="user-story-18"></a>  

**Als** Entwickler / DevOps Engineer  
**möchte ich** eine Präsentation und Demo erstellen  
**damit** der Fortschritt des Projekts, die Monitoring-Visualisierungen und die Cluster-Performance vorgestellt werden können.  

**Akzeptanzkriterien:**  

- Präsentation enthält Screenshots oder Dashboards des Monitoring-Tools.  
- Live-Demo des Deployments auf Minikube möglich.  
- Kernpunkte von Monitoring, Optimierung und Architektur sind verständlich dargestellt. 
---

| Nr. | Bereich                     | User Story                                                                 | Status   |
|-----|-----------------------------|---------------------------------------------------------------------------|----------|
| 15  | Monitoring Tool Evaluation   | [Monitoring-Tools vergleichen und auswählen](#user-story-15)              | ✅ Done |
| 16  | Monitoring Implementation    | [Monitoring-Tool implementieren und überwachen](#user-story-16)           | ✅ Done |
| 17  | Documentation               | [Setup und Architektur dokumentieren](#user-story-17)                     | ✅ Done |
| 18  | Presentation & Demo         | [Präsentation und Demo vorbereiten](#user-story-18)                       | ✅ Done |

---

#### 🏁 Sprint Review

---

##### ✅ Was wurde erreicht?
- Lens als Monitoring-Tool für Minikube erfolgreich ausgewählt und implementiert.  
- Echtzeit-Überwachung von Pods, Logs, CPU- und Memory-Metriken eingerichtet.  
- Ressourcenlimits, Liveness- und Readiness-Probes für GameOps-Pods konfiguriert.  
- Deployment-Architektur und CI/CD-Workflow vollständig dokumentiert.  
- Präsentation mit Screenshots der Dashboards und Live-Demo auf Minikube vorbereitet.  
- Teammitglieder konnten die Umgebung dank Dokumentation problemlos reproduzieren.  

---
##### ⚠️ Herausforderungen
- Auswahl des Monitoring-Tools erforderte Abwägung zwischen Echtzeitfähigkeit (Lens) und Langzeit-Analysen (Grafana/Prometheus).  
- Liveness- und Readiness-Probes mussten mehrfach angepasst werden, um False-Positives zu vermeiden.  
- Bei Live-Demo traten initial kleine Verzögerungen bei Pod-Status und Log-Anzeige auf.  
- Dokumentation der genauen Installations- und Konfigurationsschritte war zeitaufwendig, um reproduzierbar zu sein.

---
##### 🎓 Lessons Learned
- Lens eignet sich hervorragend für lokale Test- und Entwicklungscluster, schnelle Fehleranalyse und Debugging.  
- Ressourcenlimits und Probes verbessern die Stabilität der Anwendung und verhindern CrashLoops.  
- Dokumentation und Visualisierung sind entscheidend, um die Transparenz für Team und Stakeholder zu erhöhen.  
- Vorbereitung einer Live-Demo erfordert frühzeitiges Testen der Cluster-Performance und Dashboards.

---
#### 🔍 Sprint Retrospektive

---

##### ✅ Was lief gut?
- Monitoring-Tool konnte schnell evaluiert, ausgewählt und implementiert werden.  
- Echtzeit-Metriken und Logs ermöglichten schnelle Identifikation von Problemen.  
- Dokumentation und Präsentation ermöglichten eine klare Kommunikation des Projektfortschritts.  
- Team konnte selbstständig Tests und Dashboards nachvollziehen.
---

##### ⚠️ Was lief nicht gut?
- Feinjustierung von Probes und Ressourcenlimits dauerte länger als geplant.  
- Live-Demo auf Minikube zeigte gelegentlich verzögerte Updates in Lens.  
- Dokumentation musste mehrfach angepasst werden, um verständlich und reproduzierbar zu sein.

---

##### 🚀 Verbesserungsmöglichkeiten
- Standardisierte Vorlage für Monitoring-Setup inkl. Probes, Ressourcenlimits und Dashboards einführen.  
- Automatisierte Checks für Deployment- und Pod-Status im Cluster implementieren.  
- Regelmäßige Tests für Live-Demo und Dashboard-Darstellung einplanen.  
- Feedback-Runden mit Teammitgliedern frühzeitig in die Dokumentation einbeziehen.