# 🛠️ malleable-auto-c2 (Mac2)

**Mac2** is an automated generator and deployer of stealthy [Cobalt Strike](https://www.cobaltstrike.com/help-malleable-c2) Malleable C2 profiles. It randomizes profiles daily, mimicking legitimate traffic patterns and CDN behaviors, and pushes the profiles to GitHub via CI/CD. Designed for red teamers, adversary simulation, and high OPSEC emulation.

---

## 🚀 Features

- 🔁 **Daily Rotating Malleable C2 Profiles**
- 🎭 **Randomized Profile Themes**:
  - GitHub API
  - AWS S3
  - Microsoft Update
  - Slack, Discord, Reddit, etc.
- 🕵️ **Stealth and OPSEC Focused**:
  - Smart header manipulation
  - Domain fronting mimicry
  - Realistic URIs, Jitter, HTTP GET/POST configs
- 🧠 **YAML-driven Profile Generator**
- 🧬 **Scriptable and Extendable**
- 🔄 **CI/CD Integrated via GitHub Actions**

---

## 📁 Project Structure

```
malleable-auto-c2/
├── profiles/                 # Auto-generated Malleable C2 profiles
├── themes/                   # Base profile themes (e.g. GitHub, S3)
├── templates/                # Jinja2-style profile templates
├── generate_profile.py       # Main generator logic
├── .github/
│   └── workflows/
│       └── generate.yml      # GitHub Actions workflow
└── README.md
```

---

## ⚙️ Usage

### 1. Clone the repo

```bash
git clone git@github.com:remembercds/malleable-auto-c2.git
cd malleable-auto-c2
```

### 2. Run the generator manually

```bash
python3 generate_profile.py
```

This will output a new randomized `profile_<date>.profile` to `profiles/`.

### 3. Let GitHub Actions do the work (daily)

The included workflow runs daily and commits the new profile automatically. You can modify this schedule in `.github/workflows/generate.yml`.

---

## 🛡️ OPSEC Considerations

Mac2 is built to reduce behavioral detection signatures in red team ops:

- Avoids static headers like `User-Agent: Mozilla/5.0`
- Jitter/randomization applied to profile parameters
- Domain fronted themes simulate real CDNs and SaaS platforms

> **Note**: Always customize and test before use in production operations.

---

## 📦 Requirements

- Python 3.7+
- [Jinja2](https://palletsprojects.com/p/jinja/) (`pip install jinja2`)
- GitHub account and repo
- Basic Git CLI skills

---

## 🧠 Credits & Inspiration

- [Cobalt Strike Malleable C2 Docs](https://www.cobaltstrike.com/help-malleable-c2)
- Red Team community tooling and OPSEC research
- Ideas borrowed from ThreatCheck, CS2Mod, and public profile libraries

---

## 📜 License

This project is for **educational and authorized red team use only**. Use responsibly.

---
