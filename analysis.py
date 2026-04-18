import pandas as pd
df=pd.read_csv("Titanic-Dataset.csv")

df.columns=df.columns.str.lower()
df['age']= df['age'].fillna(df['age'].median())
df["embarked"]=df['embarked'].fillna(df['embarked'].mode()[0])
df = df.drop_duplicates()

#Family size
df['family_size'] = df['sibsp']+ df['parch']+1

#Is alone
df['is_alone']= df['family_size'].apply(lambda x: 'Alone' if x==1 else 'With Family')

#Title extraction
df['title'] = df['name'].str.extract(r',\s*(.*?)\.')

#Age groups
df['age_group'] = df['age'].apply(lambda x: 'Child' if x < 18 else 'Adult')
print(df['age_group']) 

#survival by gender
print(df.groupby('sex')['survived'].mean())

#survival by class
print(df.groupby('pclass')['survived'].mean())

#survival by title
print(df.groupby('title')['survived'].mean())

#survival by family
print(df.groupby('is_alone')['survived'].mean())

print(df)
df.to_csv("c:/Users/AG BOSS/OneDrive/Desktop/project/raw data/Titanic_cleaned.csv", index=False)
