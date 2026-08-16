# Zynq-Fpga-Tutorials

![Vivado](https://img.shields.io/badge/Vivado_2023.2-E0232E?style=for-the-badge&logo=amd&logoColor=white)
![FPGA](https://img.shields.io/badge/XC7Z020_SP2-6A0DAD?style=for-the-badge&logo=semiconductor&logoColor=white)
![License](https://img.shields.io/badge/License_MIT-00599C?style=for-the-badge&logo=open-source-initiative&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Arch](https://img.shields.io/badge/Arch%20Linux-1793D1?logo=arch-linux&logoColor=fff&style=for-the-badge)

## О проекте (Mission Statement)

Этот репозиторий содержит проекты, драйверов и конфигураций для отладочной платы **Smart ZYNQ SP2 (XC7Z020)**. 

<img width="3000" height="1551" alt="IMG_20260816_175655_488~2" src="https://github.com/user-attachments/assets/5632bfb0-9f2c-46dd-b755-b72ea216cdc7" />

Проект является глубоким рефакторингом и переводом оригинальных обучающих материалов с сайта [HelloFPGA](http://www.hellofpga.com/index.php/2024/01/21/smart-zynq-sp2/). 

**Цель репозитория** — предоставить структурированную, англо- и русскоязычную базу знаний для разработчиков, адаптированную под современные промышленные стандарты (автоматизация сборки через Tcl, чистый Verilog, отсутствие бинарного мусора в системе контроля версий).

---

## Аппаратная спецификация (Hardware Target)

* **SoC:** Xilinx Zynq-7000 (XC7Z020-2CLG400)
* **System Clock (PS):** 33.333 MHz
* **Fabric Clock (PL):** 50.000 MHz
* **RAM:** 512MB DDR3
* **Особенности:** Наличие HDMI, MIPI CSI-2, Gigabit Ethernet.

---
