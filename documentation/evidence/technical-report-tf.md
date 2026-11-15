# Terraform Digital Sovereignty & Zero-Trust Infrastructure Security

For this project, I used Terraform to define a small AWS infrastructure setup and HashiCorp Sentinel to check its security before deployment. I created five policies covering data sovereignty, EC2 security, storage encryption, network access, and the software supply chain. All **10 local Sentinel test cases** passed, covering both compliant and non-compliant scenarios. In one compliant HCP Terraform run, all **five policies passed**, with **two resources planned for creation**.

## Limitations

The main limitation is that I verified the planning and policy-checking stages rather than a working AWS deployment, partly because deploying resources could incur costs. I used mock credentials, so I cannot claim that the EC2 instance or security group was successfully created. The infrastructure is also quite small and does not represent a complete production environment.

Another limitation is that most policies were configured in advisory mode due to the limits of the HCP Terraform plan I was using. This allowed me to demonstrate that Sentinel detects violations, but an advisory result would not prevent someone from applying an insecure configuration. My tests covered a limited number of pass and fail scenarios. During some HCP tests, more than one policy reported a violation because all the checks were evaluated against the same plan.

## Recommendations

If I extend this project, I would first make the most important security policies mandatory once their behaviour has been tested properly. I would also add more isolated negative tests and use HCP-generated Sentinel mocks to cover additional cases. For a more realistic setup, I would use secure AWS authentication, expand the infrastructure, and introduce least-privilege IAM permissions. Monitoring and logging could also be included as optional improvements. I would review provider version constraints and automate policy checks on pull requests so that security issues can be caught before changes are merged.

## Conclusion

Overall, this project helped me understand how Terraform and Sentinel can identify configuration and data sovereignty issues early. A future step would be to test the same controls against a safely deployed environment and improve them for continuous compliance.

I also learned how to organise Git branches around features and changes, and that I do not need a new long-lived branch for every small update. I kept screenshots and notes along the way for reference, although some intermediate steps may be missing because I frequently switched between branches during testing.

**Additional project notes and screenshots:** [Google Docs](https://docs.google.com/document/d/1cpz2gO2jQ2FmF82hS35n8mCvZIBCmZgq0emY6euTMks/edit?usp=sharing)
