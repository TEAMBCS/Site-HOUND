

<p align="center">
  <img src="https://i.postimg.cc/Jn6stHfg/1000258588.jpg" alt="Site Hound Logo" width="350"/>
<h6>DEVELOPER ➤ BLACK ZERO ✘ PARVES JOY</h6>
</p>

---

---

## 📌 About
**Site Hound** is a fast, reliable, and interactive web reconnaissance tool for ethical hackers.  
It scans websites to detect administrative and login entry points, automatically exploring common paths and file extensions.  

---

## ⚡ Features
- 🔍 Detects common admin panels & login pages  
- 🛠️ Supports multiple extensions: `.php, .aspx, .jsp, .html, .htm, .cfm, .py, .rb, .cgi`  
- 🎯 Path permutations for deeper scanning  
- 🌐 Simple, single-command interactive tool  
- 🖤 Hacker-style terminal interface with rich banners  
- 📂 Optional wordlists and proxy support  
- ⏱️ Fast and polite scanning with concurrency controls  

---

## 🛠️ Installation
Clone the repo:

```bash
pkg update && pkg upgrade
pkg install git
pkg install python3 
git clone https://github.com/TEAMBCS/Site_HOUND.git
cd Site_Hound
chmod +x *
pip install -r requirements.txt
python3 site_hound.py
````

Install dependencies:

```bash
pip install -r requirements.txt
```

---

## 🚀 Usage

Run the tool with Python 3:

```bash
python3 site_hound.py
```

Follow interactive prompts:

1. Enter target URL or file with multiple targets
2. Choose extra wordlists, proxies, or extensions (optional)
3. Enable deep scanning or path permutations (optional)
4. Tool will scan, display results in a table, and save outputs

---

## 📄 Output

Generated in the same directory:

* `<target>_admins.csv` → CSV report
* `<target>_admins.json` → JSON report
* `<target>_admins.txt` → Plain text report

---

## ⚠️ Disclaimer

**Site Hound** is strictly for **ethical use**.
Run only on websites you have **written permission** to test.
The author is **not responsible** for misuse.

---

## 👨‍💻 Author

* **BLACK ZERO**
* 🌐 GitHub: [BLACK ZERO](https://github.com/ADIRTTA)

---

```
╔════════════════════════════════════════╗
║  🐾 Ethical Hacking Tool | SITE HOUND         ║
╚════════════════════════════════════════╝
```

