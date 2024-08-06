
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
        
        
        # Filter data for the first 6 months of 2023 and 2024
        filtered_original <- original_created_dt[
          (created_dt >= "2023-01-01" & created_dt <= "2023-06-30") |
            (created_dt >= "2024-01-01" & created_dt <= "2024-06-30")
        ]
        
        filtered_adjusted <- adjusted_created_dt[
          (created_dt_weekday >= "2023-01-01" & created_dt_weekday <= "2023-06-30") |
            (created_dt_weekday >= "2024-01-01" & created_dt_weekday <= "2024-06-30")
        ]
        