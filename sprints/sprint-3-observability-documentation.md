
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