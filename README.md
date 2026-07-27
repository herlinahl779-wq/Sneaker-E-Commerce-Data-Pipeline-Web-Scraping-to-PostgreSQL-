# 👟 Sneaker Market ETL Pipeline: Web Scraping to PostgreSQL

**By Herlina** | Data Analyst

---

## 📌 Project Overview

This project is an end-to-end **ETL (Extract, Transform, Load) data pipeline** built to collect, clean, and store sneaker product data from an e-commerce website. The pipeline scrapes live product listings, processes them into a clean structured dataset, and loads the final data into a **PostgreSQL** database for further analysis.

The goal of this project was to simulate a real-world data engineering workflow: pulling raw, unstructured data from the web and turning it into a reliable, query-ready dataset.

## 🎯 Objectives

- Extract product data directly from a live e-commerce website using web scraping
- Clean and transform raw scraped data into a structured, analysis-ready format
- Validate and correct data types (ensuring price/discount columns are properly numeric)
- Load the cleaned dataset into a relational database (PostgreSQL)

## 🛠️ Tools & Tech Stack

- **Python** — core scripting language
- **Selenium** — browser automation for dynamic page loading & scrolling
- **BeautifulSoup** — HTML parsing to extract product data
- **Pandas** — data cleaning, transformation, and export
- **PostgreSQL / pgAdmin** — database creation and data loading
- **SQL** — table schema (DDL) and data import (DML)

## 🔄 Pipeline Workflow

### 1. Extract
- Scraped women's sneaker listings from [Kick Avenue](https://www.kickavenue.com), an online sneaker marketplace
- Used Selenium to automate page loading and infinite-scroll behavior across multiple pages
- Parsed the page HTML with BeautifulSoup to extract: product name, brand, retail price, product image URL, and discount/original price
- Collected **1,242 product listings**, well above the minimum requirement

### 2. Transform
- Explored and validated the raw scraped data (data types, missing values, formatting issues)
- Cleaned price and discount columns, converting text-based currency values (e.g. `"IDR 1,770,000"`) into proper numeric (`float`) types
- Handled missing values in the discount/original price columns for products without an active discount
- Exported the cleaned dataset to `coda_P0M1_Data_Bersih_Herlina.csv`

### 3. Load
- Designed a relational table schema (`sneakers`) in PostgreSQL with appropriate data types for each column
- Wrote SQL scripts (DDL) to create the database table
- Loaded the cleaned CSV data into PostgreSQL using `COPY` (DML), executed via pgAdmin

## 📂 Project Structure

```
├── coda_P0M1_Herlina.ipynb            # Notebook: scraping (Extract) & data cleaning (Transform)
├── coda_P0M1_Data_Kotor_Herlina.csv   # Raw scraped data (before cleaning)
├── coda_P0M1_Data_Bersih_Herlina.csv  # Cleaned dataset (after transformation)
├── coda_P0M1_Herlina.sql              # SQL script: table creation & data loading (Load)
├── coda_PM01_PgAdmin_Herlina.csv      # Data loaded into PostgreSQL via pgAdmin
└── README.md                          # Project documentation
```

## 📊 Dataset Snapshot

| Column | Description |
|---|---|
| `nama_produk` | Sneaker product name |
| `brand_produk` | Brand (e.g. Nike, Adidas, Puma, Air Jordan) |
| `harga_retail` | Retail/selling price (IDR) |
| `link_gambar` | Product image URL |
| `harga_original` | Original price before discount (IDR) |
| `diskon` | Discount percentage |

## ✅ Key Takeaways

- Practiced building a complete ETL pipeline from scratch — from raw web data to a structured database
- Handled real-world data messiness: inconsistent formatting, missing values, and text-to-numeric conversion
- Strengthened hands-on skills in **web scraping (Selenium & BeautifulSoup)**, **data wrangling (Pandas)**, and **relational database management (SQL/PostgreSQL)**

---
