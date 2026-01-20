# 🚀 Terraform AWS Infrastructure – Final Lab

This project contains a complete AWS Infrastructure automated using **Terraform**, as required in the final lab.  
It deploys an EC2 instance inside an existing VPC, installs **NGINX automatically**, and outputs the public IP.

---

## 📌 **Project Overview**

The Terraform configuration performs the following:

- Import and use an **existing VPC**
- Create a **Public Subnet**
- Create a **Security Group** allowing:
  - HTTP (80)
  - HTTPS (443)
  - SSH (22)
- Launch **Ubuntu 24.04 Free Tier EC2 instance**
- Install **NGINX automatically** via user-data script
- Output the **EC2 Public IP**
- Upload screenshots in `/screenshots` folder

---

## 📁 **Project Structure**

terraform-aws-infra/
│── main.tf
│── variables.tf
│── outputs.tf
│── provider.tf
│── backend.tf
│── input.json
│── README.md
│── screenshots/
│ └── *.png
│── modules/
├── ec2/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
└── subnet/
├── main.tf
├── variables.tf
└── outputs.tf


📸 Screenshots

Screenshots for each step (Terraform apply, EC2 creation, NGINX working, etc.)
are included in the screenshots/ directory.

👤 Author

Kerolos Ashraf

🤝 Instructor
Eng. Omar Higgy