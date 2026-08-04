import pandas as pd
import mysql.connector
from sqlalchemy import create_engine

# Load cleaned dataset
df = pd.read_csv("cleaned_food_delivery_data.csv")

# Create MySQL connection
engine = create_engine(
    "mysql+mysqlconnector://root:YOUR_PASSWORD@localhost:3306/food_delivery_db"
)

# Upload dataframe to MySQL
df.to_sql(
    name="cleaned_food_delivery_data",
    con=engine,
    if_exists="replace",
    index=False
)

print("✅ Data uploaded successfully to MySQL!")