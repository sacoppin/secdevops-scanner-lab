# 🛡️ SecDevOps Lab: Automated Vulnerability Scanning (Trivy)

> **Demonstration Project:** Integrating security early into a CI/CD pipeline (Shift Left) using GitHub Actions and the open-source tool Trivy.

---

## 🎯 Project Goal

This repository showcases the ability to automate vulnerability detection before deployment. The pipeline is intentionally configured to **fail** if Critical or High severity vulnerabilities are detected, ensuring non-compliant code does not proceed to production.

### ⚙️ Key Technologies

| Domain | Tools | Role in the Pipeline |
| :--- | :--- | :--- |
| **Security** | Trivy (Aqua Security) | Static Application Security Testing (SAST) and Container Image Scanning. |
| **DevOps** | GitHub Actions | Orchestration of the CI/CD pipeline and enforcement of the "Fail-Fast" security policy. |
| **Infrastructure** | Docker | Containerization of the simple demonstration application. |

---

## 📈 Security Pipeline Status

**The pipeline is configured to fail intentionally.** (See the Trivy report below for details on the critical vulnerabilities found.)

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/sacoppin/secdevops-scanner-lab/trivy_scan.yml?branch=main&style=for-the-badge&logo=githubactions)

---

## 🛠️ Results and Failure Demonstration

The pipeline fails on the first scan (`Run Trivy vulnerability scan on Docker Image`) due to the `exit-code: '1'` configuration, proving that the security policy is enforced.

### Intentional Vulnerabilities Injected:

1.  **Vulnerable Base Image:** Using `node:14` (an intentionally old version) in the `Dockerfile`.
2.  **Vulnerable Dependency:** Using the old `express@4.16.4` version in `package.json`.

> 💡 **SOC Analyst Role Relevance:** In a real-world environment, the analyst uses these reports to generate SIEM alerts, document risks, and collaborate with DevOps teams to patch these vulnerabilities *before* deployment.

---

## ⏭️ Next Steps (Project Improvement)

To enhance the security of this pipeline, potential next steps include:

1.  **Updating** the Docker base image (`node:latest` or a recent LTS version).
2.  **Patching** the `express` dependency to a non-vulne**rable version.
3.  **Adding IaC scanning** (Infrastructure as Code) if Terraform or Ansible files were present.

[Click here to view the full run history and vulnerability logs](https://github.com/sacoppin/secdevops-scanner-lab/actions)