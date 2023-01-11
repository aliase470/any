import pandas as pd 
import matplotlib.pyplot as plt
import seaborn as sns
data = pd.read_csv('temperatures.csv')
# print(data)
# print(data.shape)
""" datatypes = data.dtypes #for all columns
print(datatypes) """
plt.title("Temperature vs Year")
plt.xlabel("Year")
plt.ylabel("Temperature")
x = data["YEAR"]
y = data["ANNUAL"]
plt.plot(x,y,'o')
plt.show()