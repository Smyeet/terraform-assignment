# Terraform Digital Sovereignty & Zero-Trust Security

A **Terraform + AWS** infrastructure project using **HashiCorp Sentinel** and **HCP Terraform** to validate security and data-sovereignty requirements *before deployment*.

## What it checks

| Sentinel policy | Requirement |
| --- | --- |
| **Sovereignty** | Restrict deployment to approved EU regions |
| **EC2 Security** | Approved instance types and IMDSv2 |
| **Storage Security** | EBS volume encryption |
| **Network Security** | No unrestricted inbound access (`0.0.0.0/0`) |
| **Supply Chain** | Approved providers/modules and version constraints |

## Workflow

```text
GitHub → HCP Terraform → Terraform Plan → Sentinel Checks → Evidence
```

The planned infrastructure consists of an AWS EC2 instance and security group. This project validates plans and policies; **no successful AWS deployment is claimed**.

## Testing

Run the local Sentinel tests:

```bash
cd sentinel
sentinel test -verbose
```

- **Local:** 10/10 positive and negative mock tests passed.
- **HCP Terraform:** A compliant run passed **5/5 policies**, planning **2 additions, 0 changes and 0 deletions**.
- **Negative tests:** Temporary PRs deliberately violated policy rules. HCP captured advisory and mandatory results; some runs showed multiple independent violations.

A passing *negative* mock test means Sentinel correctly **rejected** the insecure configuration.

## Project files

- [`terraform/`](terraform/) — AWS infrastructure configuration
- [`sentinel/`](sentinel/) — Five policies and test mocks
- [`documentation/technical-report.md`](documentation/technical-report.md) — Implementation and findings
- [`documentation/evidence/`](documentation/evidence/) — Local logs, HCP screenshots and plan evidence

See the [evidence index](documentation/evidence/README.md) for individual policy results and screenshots. The submitted `tfplan` text file records plan output; it is **not** a binary saved plan.

## AI Usage

ChatGPT (OpenAI, GPT-6) was used to support learning, explain Terraform and Sentinel concepts, assist with troubleshooting and review code and documentation.

All configuration changes and test results were reviewed during development. 
