# 🚀 Terraform AWS Infrastructure – Final Lab

This project contains a complete AWS Infrastructure automated using **Terraform**, as required in the final lab.  
It deploys an **EC2 instance** inside an **existing VPC**, creates a **public subnet**, provisions a **Security Group**, installs **NGINX automatically**, and outputs the **public IP**.

---

## 📘 Project Overview

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
- Upload proof screenshots in the `/screenshots` folder

---

## 📂 Project Structure

```

terraform-aws-infra-final-lab/
│── backend.tf
│── provider.tf
│── variables.tf
│── outputs.tf
│── main.tf
│── input.json
│── screenshots/
│    ├── 1.jpg
│    ├── 2.jpg
│    ├── 3.jpg
│── modules/
├── ec2/
│    ├── main.tf
│    ├── variables.tf
│    ├── outputs.tf
├── subnet/
├── main.tf
├── variables.tf
├── outputs.tf

```

---

## 📸 Screenshots

![VPC](screenshots/1.jpg)

![NGINX](screenshots/3.jpg)

![NGINX](screenshots/8.jpg)

![NGINX](screenshots/9.jpg)


---

## 🧪 How to Use

### 1️⃣ Initialize Terraform
```

terraform init

```

### 2️⃣ Validate configuration
```

terraform validate

```

### 3️⃣ Deploy infrastructure
```

terraform apply -auto-approve



---

## 👨‍💻 Author

**Kerolos Ashraf**

---

## 👨‍🏫 Instructor

**Eng. Omar Higgy**

---

