
import pandas as pd

# Load CSV file
df = pd.read_csv("data/vendor_payments.csv")

# Display first 5 rows
print("First 5 rows:")
print(df.head())

# Display number of rows and columns
print("\nDataset Shape:")
print(df.shape)

# Check missing values
print("\nMissing Values:")
print(df.isnull().sum())

# Check data types
print("\nData Types:")
print(df.dtypes)

# Dataset information
print("\nDataset Information:")
df.info()

# Convert date columns into datetime
df["invoice_date"] = pd.to_datetime(df["invoice_date"])
df["payment_date"] = pd.to_datetime(df["payment_date"])

print("\nUpdated Data Types:")
print(df.dtypes)