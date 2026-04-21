# iPOS Sales Automation & Financial Data Pipeline (ETL)

> 📂 **[VIEW FULL PROJECT PRESENTATION (PDF)](presentation/Sales_Automation_Full_Pipeline.pdf)**

## 🎯 Project Overview
This project is a complete **ETL (Extract, Transform, Load)** pipeline that automates the extraction of daily sales data from the **iPOS (Fabi)** system. It transforms raw, nested transaction logs into structured financial data and loads it directly into **Google Sheets** to power real-time **Looker Studio** dashboards.

**Impact:** It eliminates **5+ hours of manual data entry/week**, ensures 100% data integrity for financial reconciliation, and provides instant business visibility.

## 🛠 Tech Stack
* **Language:** Python 3.x
* **Data Processing:** Pandas, NumPy (High-performance vectorized transformations)
* **Automation:** Selenium WebDriver (Automated Token & Header Retrieval)
* **API Integration:** Requests (iPOS Backend), **Google Sheets API** (via `gspread`)
* **Visualization:** **Looker Studio** (Real-time Business Intelligence dashboards)
* **Deployment:** Windows Batch Scripting (`.bat`)/Bash Scripting (.sh) for macOS for one-click execution

## 🚀 Key Features & Business Logic
* **Automated Authentication:** Uses Selenium to capture network logs, automatically retrieving dynamic Auth Tokens to bypass manual login hurdles.
* **Smart Data Loading (Append Logic):** implemented custom logic to **append** new daily data to Google Sheets without overwriting history, including an auto-header detection system for new sheets.
* **Financial Correction & Traceability:**
    * **Topping Expansion:** Uses `ast.literal_eval` to parse and flatten nested topping data into individual line items for accurate inventory tracking.
    * **CFA-Aligned Logic:** Corrects Unit Prices and handles **FIFO-based quantity deductions** for cancelled or modified orders.
    * **Traceability:** Implemented an "Ultimate Root" algorithm to track original invoices across split/merged tables, ensuring revenue is never double-counted.
* **Data Formatting:** Automatically handles special character prefixing (e.g., "'+") to prevent Google Sheets from misinterpreting text as formulas.

## 📊 Data Workflow
1. **Extract:** Python scripts pull raw JSON logs from iPOS APIs.
2. **Transform:** Pandas cleans the data, maps store IDs, and recalculates financial ratios.
3. **Load:** Data is pushed to a centralized Google Sheet via Service Account credentials.
4. **Visualize:** Looker Studio connects to Google Sheets for automated daily reporting (Revenue, Staff Productivity, Product Mix).

## 📁 Project Structure
* `scripts/`: Core Python engine (`github.py`) and automation scripts (`.sh`/`.bat`).
* `config/`: Environment variables (`.env`) and API credentials (git-ignored for security).
* `data/`: Local audit trail of processed files (timestamped).
* `presentation/`: **A comprehensive PDF case study** detailing the ETL workflow and Looker Studio dashboard previews.

## 📊 Business Impact
* **Efficiency:** Transitioned from manual Excel downloads to a 100% automated "click-and-run" pipeline.
* **Accuracy:** Eliminated human error in complex topping price adjustments and multi-branch revenue consolidation.
* **Real-time Insights:** Operational managers now access sales performance data instantly via mobile-friendly Looker dashboards.

---
*Developed by **Le Hoang Bao Chau** - Operational Excellence | Data Analyst | CFA Level I Candidate.*
