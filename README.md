

<p align="center">
  <img src="https://i.postimg.cc/Jn6stHfg/1000258588.jpg" alt="Site Hound Logo" width="350"/>
</p>
<h1 align="center">🛡️ Site Hound - Website Admin page + Extra page Finder </h1>
<p align="center">
  🇧🇩 Developed by <b>BLACK ZERO ✘ PARVES JOY</b><br>
  🚀 Powered by <b>BANGLADESH CYBER SQUAD </b><br>
</p>
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
pkg install git -y
pkg install python3 -y
pkg install wget -y
git clone https://github.com/TEAMBCS/Site-HOUND.git
cd Site_Hound
chmod +x *
pip install -r requirements.txt
python3 site_hound.py
```


## 🛡️ Short cut + Oneline installation 
run :
```bash
wget https://raw.githubusercontent.com/TEAMBCS/Site-HOUND/main/site_hound_installer.sh -O site_hound_installer.sh && chmod +x site_hound_installer.sh && bash site_hound_installer.sh && SITE-HOUND

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
* 🧢 Website: [BLACK ZERO](https://black-zero.vercel.app)
---

```
╔════════════════════════════════════════╗
║  🐾 Ethical Hacking Tool | SITE HOUND         ║
╚════════════════════════════════════════╝
```

