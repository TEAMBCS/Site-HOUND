<p align="center">
  <img src="https://raw.githubusercontent.com/TEAMBCS/Site-HOUND/main/image/Site-HOUND-logo.png" width="350"/>
</p>

<h1 align="center">🐺 Site HOUND</h1>

<p align="center">
  <b>Advanced Asynchronous Web Fuzzer & Recon Engine</b><br>
  High-Speed • Intelligent • Stealth-Oriented
</p>

<p align="center">
  🇧🇩 Developed by <b>BLACK ZERO </b><br>
  🛡️ Powered by <b>BANGLADESH CYBER SQUAD</b>
</p>

---

## Dependencies

![aiohttp](https://img.shields.io/badge/aiohttp-async%20http-green)
![aiohttp-socks](https://img.shields.io/badge/aiohttp--socks-proxy%20support-orange)
![rich](https://img.shields.io/badge/rich-terminal%20ui-purple)
![beautifulsoup4](https://img.shields.io/badge/beautifulsoup4-html%20parser-yellow)
![License](https://img.shields.io/badge/license-MIT-License.svg)
![Version](https://img.shields.io/badge/Version-2.1.3%20-yellow)

---


## 📌 Description

**Site Hound** is a modern, high-performance web fuzzing framework designed for **deep reconnaissance and endpoint discovery**.

Unlike traditional directory brute-force tools, Site Hound integrates:

* adaptive concurrency
* intelligent filtering
* header spoofing
* recursive discovery
* response analysis

to produce **accurate, low-noise results at high speed**.

---



## 🧠 Core Capabilities

### ⚡ Asynchronous Fuzzing Engine

* Built on `asyncio` + `aiohttp`
* Handles thousands of requests efficiently
* Non-blocking architecture for maximum throughput

### 🧬 Intelligent Wordlist Processing

* Automatic deduplication
* Comment & noise removal
* Bad character filtering
* Smart sorting and normalization

### 🔍 Smart Payload Generation

* Context-aware extension combination
* Prevents invalid payloads (`.env.php`, `.bak.bak`)
* Supports deep path fuzzing

### 🛡️ Detection Systems

#### ➤ Soft-404 Detection

* Content length comparison
* Hash fingerprinting (MD5)
* Word & line analysis

#### ➤ Wildcard Detection

* Detects servers returning constant responses
* Prevents false positives

#### ➤ Response Filtering

* Filter by status code, size, words, lines
* Match specific patterns

---

## 🚀 Performance & Optimization

### ⚙️ Adaptive Concurrency Engine

* Dynamically adjusts request speed
* Detects:

  * rate limiting (429)
  * server errors (5xx)
  * latency spikes
* Auto reduces or increases concurrency

### ⏱️ Rate Limiting System

* Requests-per-second control
* Prevents detection & blocking

### 🔁 Retry & Backoff Logic

* Automatic retry on failure
* Smart delay handling

---

## 🕵️ Stealth & Evasion

### 🎭 Header Spoofing Engine

* Generates realistic headers:

  * `X-Forwarded-For`
  * `X-Real-IP`
  * `Via`
* Mimics proxy chains
* Random IP rotation

### 🌐 User-Agent Rotation

* Built-in real browser UAs
* Custom UA support:

  * file
  * JSON
  * manual

---

## 🔁 Recursive & Deep Scanning

* Auto directory discovery
* Controlled recursion depth
* Deep fuzzing with path explosion
* Built-in crawler support

---

## 📊 Logging & Output

### 🎨 Rich Terminal UI

* Colored logs
* Real-time status updates
* Structured output display

### 📁 Export Formats

* JSON → structured data
* CSV → analysis ready
* TXT → raw output

---

## 🛠️ Installation

### 📱 Termux / Linux

```bash
pkg update && pkg upgrade -y
pkg install git python -y

git clone https://github.com/TEAMBCS/Site-HOUND.git
cd Site-HOUND
chmod +x *
git pull
pip install -r site-hound.txt
python3 site-hound.py -h
```

---

## ⚡ Quick Start

```bash
python3 site-hound.py -u https://target.com
```

---

## ⚙️ Advanced Usage

```bash
python3 fuzz7.py \
-u https://target.com \
-w wordlist.txt \
--ext php,html,json \
--concurrency 80 \
--adaptive \
--spoof-headers \
--recursion-depth 3 \
--rate-limit 15 \
--timeout 10
```

---

## 🧩 CLI Arguments (Detailed)

| Argument            | Description                 |
| ------------------- | --------------------------- |
| `-u, --url`         | Target URL                  |
| `-w, --wordlist`    | Wordlist file               |
| `--ext`             | File extensions             |
| `--concurrency`     | Number of async workers     |
| `--adaptive`        | Enable adaptive concurrency |
| `--rate-limit`      | Requests per second         |
| `--timeout`         | Request timeout             |
| `--retries`         | Retry count                 |
| `--proxy`           | Proxy support               |
| `--header`          | Custom headers file         |
| `--spoof-headers`   | Enable header spoofing      |
| `--ua`              | User-Agent file             |
| `--ua-json`         | User-Agent JSON             |
| `--recursion-depth` | Directory recursion depth   |
| `--deep`            | Enable deep fuzzing         |
| `--crawl-depth`     | Crawl depth                 |
| `--filter-codes`    | Filter status codes         |
| `--match-codes`     | Match only specific codes   |

---

## 🧠 Internal Workflow

```
Target Input
   ↓
Preflight Check
   ↓
Soft-404 Baseline
   ↓
Wildcard Detection
   ↓
Wordlist Optimization
   ↓
Async Fuzzing Engine
   ↓
Adaptive Concurrency Control
   ↓
Filtering & Validation
   ↓
Result Storage
```

---

## 📈 Use Cases

* Admin panel discovery
* Hidden endpoint detection
* API enumeration
* Backup file detection
* Misconfiguration discovery

---

---

## 📸 Screenshots

<p align="center">
  <img src="https://raw.githubusercontent.com/TEAMBCS/Site-HOUND/main/image/Site-HOUND-img-1.jpg" width="45%" alt="Screenshot 1">
  &nbsp;&nbsp;
   <img src="https://raw.githubusercontent.com/TEAMBCS/Site-HOUND/main/image/Site-HOUND-img2.jpg" width="45%" alt="Screenshot 2">
  &nbsp;&nbsp;


</p>

---

## ⚠️ Legal Disclaimer

This tool is intended strictly for **authorized security testing**.

You must have:

* explicit permission
* legal authorization

The developer assumes **no liability** for misuse.

---

## 👨‍💻 Author
* 🔗 Dev: **BLACK ZERO**
* 🛡️ Team: **BANGLADESH CYBER SQUAD**

---

## 🌐 Connect With Us


<p align="center">
  
  <a href="https://github.com/TEAMBCS">
    <img src="https://img.shields.io/badge/GitHub-TEAMBCS-181717?style=for-the-badge&logo=github" />
  </a>
  
  <a href="https://facebook.com/groups/572787103428508/">
    <img src="https://img.shields.io/badge/Facebook-Group-1877F2?style=for-the-badge&logo=facebook&logoColor=white" />
  </a>
  
  <a href="https://www.facebook.com/profile.php?id=61561500599940">
    <img src="https://img.shields.io/badge/Facebook-Page-1877F2?style=for-the-badge&logo=facebook&logoColor=white" />
  </a>

</p>


---

## FIX NOTE ->

### 🔧 `--ua-json` Flag

The `--ua-json` option allows you to provide custom **User-Agent lists** in JSON format. This gives you full control over request headers during execution.

### ✅ Format

You must pass a **JSON array of strings**:

```bash
--ua-json '["UA1", "UA2", "UA3"]'
```

### 📌 Example

```bash
python tool.py --ua-json '[
  "Mozilla/5.0 (Linux; Android 10; Mobile)",
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64)",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X)"
]'
```

### ⚙️ Supported Input Cases

This flag is designed to handle multiple input issues automatically:

* ✔ Accepts JSON passed as a **string or list** (argparse safe)
* ✔ Fixes **extra quotes** from Windows CMD / shell parsing
* ✔ Removes **BOM characters** from copied input
* ✔ Handles **multi-line JSON input**
* ✔ Cleans invalid wrapping like:

  ```bash
  "[\"UA1\", \"UA2\"]"
  ```

### ⚠️ Requirements

* Must be a **non-empty JSON array**
* All elements must be **strings**
* Invalid JSON will be ignored safely

### 🧠 Behavior

* On success → loads and uses custom User-Agents
* On failure → logs warning and falls back to default UA list (if available)

---


## 🤝 Contributing

Contributions are welcome.

* Fork the repo
* Create a branch
* Submit a pull request

---

## ⭐ Support

If you find this project useful:

* ⭐ Star the repository
* 🔁 Share with others
* 💡 Suggest improvements

---

## 🔥 Philosophy

> Precision over noise
> Speed with control
> Stealth by design

---
