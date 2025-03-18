# Ngrok-H  

![GitHub repo size](https://img.shields.io/github/repo-size/HYDRA-TERMUX/Ngrok-H?color=green&label=Repo%20Size)  
![GitHub stars](https://img.shields.io/github/stars/HYDRA-TERMUX/Ngrok-H?style=social)  
![GitHub forks](https://img.shields.io/github/forks/HYDRA-TERMUX/Ngrok-H?style=social)  
![Visitors](https://visitor-badge.glitch.me/badge?page_id=HYDRA-TERMUX.Ngrok-H)  

## About  
**Ngrok-H** is a **Termux-based tool** that allows users to create secure tunnels and expose **local servers** to the internet using **Ngrok**. This tool is designed for Android users who want to **host web services, SSH, or other local applications** and make them accessible remotely.  

### Why Use Ngrok-H?  
- **Secure & Fast**: Creates a **secure tunnel** between your local server and the internet.  
- **No Port Forwarding Needed**: Works even if your ISP **blocks port forwarding**.  
- **Easy Setup**: No complex configurations, just run a simple script.  
- **Works on Mobile Hotspot**: Designed to work specifically on **mobile data networks**.  

### ⚠ Important Note:  
**Ngrok-H works only on mobile hotspot (4G/5G data networks).**  
- If you're using **Wi-Fi**, your ISP may block tunneling.  
- If you are on a **mobile hotspot**, Ngrok will work without issues.  

---

## Features  
✅ **Supports multiple protocols** (HTTP, TCP, TLS)  
✅ **Works with web servers, SSH, VNC, and other local services**  
✅ **Automatic Ngrok token configuration**  
✅ **No root required**  
✅ **Lightweight and fast**  

---

## Requirements  
Ensure you have the following before using **Ngrok-H**:  

✔ **Android device** with [Termux](https://f-droid.org/packages/com.termux/) installed  
✔ **Mobile data connection (Hotspot)** (Not Wi-Fi)  
✔ **Ngrok account** (Sign up at [ngrok.com](https://ngrok.com/) to get your Auth Token)  
✔ **Required Termux Packages:**  
   - `git` (for cloning the repository)  
   - `curl` (for downloading Ngrok)  
   - `unzip` (to extract Ngrok)  

---

## Installation  

Follow these steps to install **Ngrok-H** on Termux:  

```sh
pkg update && pkg upgrade -y  
pkg install git curl unzip -y  
git clone https://github.com/HYDRA-TERMUX/Ngrok-H.git  
cd Ngrok-H  
chmod +x ngrok-h.sh  
./ngrok-h.sh  
```

---

## Usage  

1. **Run Ngrok-H**  
   ```sh
   ./ngrok-h.sh
   ```
2. **Enter your Ngrok Auth Token** (if prompted)  
3. **Select the tunnel type** (HTTP, TCP, etc.)  
4. **Enter the port number** of the local service  
5. **Copy the generated public URL** and share it  

---

## Example Commands  

- Expose a local **web server** running on port **8080**:  
  ```sh
  ngrok http 80
  ```
---

## Why Does It Work Only on Mobile Hotspot?  
Ngrok requires a **public IP address** to establish a tunnel. Many Wi-Fi ISPs use **NAT (Network Address Translation)**, which blocks incoming connections. However, mobile networks **assign dynamic public IPs**, allowing Ngrok to work seamlessly.  

---

## Screenshots  

![Ngrok-H Example](https://via.placeholder.com/800x400?text=Ngrok-H+Example+Screenshot)  

---

## Troubleshooting  

❌ **Ngrok Not Working?**  
- Make sure you are **using mobile data (hotspot), not Wi-Fi**.  
- Ensure that **Termux has storage permissions** (`termux-setup-storage`).  
- Run `pkg update && pkg upgrade` to update Termux packages.  
- Check your **Ngrok authentication token** (`./ngrok authtoken <YOUR_TOKEN>`).  

---

## Support  

If you face any issues, open an [issue](https://github.com/HYDRA-TERMUX/Ngrok-H/issues) in this repository.  

📌 **Join our Telegram group for support!** [Telegram Link]  

---

## License  

This project is open-source under the **MIT License**.  
