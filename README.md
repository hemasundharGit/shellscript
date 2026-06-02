# 🐚 Shell Script Collection

A collection of DevOps-focused shell scripts for automation tasks including backups, deployments, AWS resource provisioning, and Bash fundamentals.

---

## 📁 Repository Structure

| Script | Description |
|---|---|
| `Backup.sh` | Automates directory backups with timestamped ZIP archives and rotation (keeps last 5) |
| `app_deploy.sh` | General application deployment automation script |
| `django_deploy.sh` | Deployment script tailored for Django applications |
| `ec2_create.sh` | Provisions AWS EC2 instances via CLI |
| `createuser.sh` | Creates Linux users on a system |
| `conditions.sh` | Demonstrates conditional statements (`if/elif/else`) in Bash |
| `for_loop.sh` | Examples of `for` loop usage in Bash |
| `while_even.sh` | Demonstrates `while` loop for iterating over even numbers |
| `Makefile` | Build targets for running/managing the scripts |

---

## 🚀 Getting Started

### Prerequisites

- Linux / macOS (or WSL on Windows)
- Bash `>= 4.x`
- AWS CLI (for `ec2_create.sh`)
- Python & pip (for `django_deploy.sh`)

### Clone the Repository

```bash
git clone https://github.com/hemasundharGit/shellscript.git
cd shellscript
git checkout devops
```

### Make Scripts Executable

```bash
chmod +x *.sh
```

---

## 📜 Script Usage

### 🗂️ Backup.sh

Creates a timestamped ZIP backup of a source directory and automatically rotates old backups (retains the last 5).

```bash
./Backup.sh <source_path> <backup_path>
```

**Example:**
```bash
./Backup.sh /var/www/html /home/user/backups
```

---

### 🚢 app_deploy.sh

Automates the deployment of a generic application.

```bash
./app_deploy.sh
```

---

### 🐍 django_deploy.sh

Handles end-to-end deployment of a Django application including dependencies and server setup.

```bash
./django_deploy.sh
```

---

### ☁️ ec2_create.sh

Creates an AWS EC2 instance using the AWS CLI. Ensure your AWS credentials are configured before running.

```bash
aws configure   # if not already configured
./ec2_create.sh
```

---

### 👤 createuser.sh

Creates a new Linux system user.

```bash
./createuser.sh
```

---

### 🔀 conditions.sh

Demonstrates the use of `if`, `elif`, and `else` conditional logic in Bash.

```bash
./conditions.sh
```

---

### 🔁 for_loop.sh

Showcases `for` loop constructs in Bash scripting.

```bash
./for_loop.sh
```

---

### 🔄 while_even.sh

Demonstrates printing even numbers using a `while` loop.

```bash
./while_even.sh
```

---

## 🛠️ Using the Makefile

You can use the `Makefile` for quick access to common operations:

```bash
make        # default target
make help   # list available targets
```

---

## 🧰 Tech Stack

![Shell](https://img.shields.io/badge/Shell-Bash-4EAA25?logo=gnu-bash&logoColor=white)
![AWS](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazonaws&logoColor=white)
![DevOps](https://img.shields.io/badge/Focus-DevOps-blue)

---

## 🤝 Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m "Add your feature"`
4. Push to the branch: `git push origin feature/your-feature`
5. Open a Pull Request

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 👤 Author

**Hemasundhar**  
GitHub: [@hemasundharGit](https://github.com/hemasundharGit)
