
        # ---- LIBRARIES -----------------------------
        library(data.table)
        library(janitor)
        library(lubridate)
        library(ggplot2)
        library(forecast)
        library(tsibble)
        library(tidyr)
        
        
        
        # ---- DATA -----------------------------
        original_created_dt <- read.csv("Original Created Date.csv")
        adjusted_created_dt <- read.csv("Adjusted Created Date.csv")
        
        
        
        
        # ---- CLEAN_UP -------------------------
        original_created_dt <- clean_names(original_created_dt)
        adjusted_created_dt <- clean_names(adjusted_created_dt)
        
        
        # Convert data frames to data tables
        setDT(original_created_dt)
        setDT(adjusted_created_dt)