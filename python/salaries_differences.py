import pandas as pd
df = pd.merge(db_employee, db_dept, left_on='department_id', right_on='id')
df_mkt = df[df['department'] == 'marketing']
df_eng = df[df['department'] == 'engineering']
mkt_max_salary = df_mkt['salary'].max()
eng_max_salary = df_eng['salary'].max()
result = abs(mkt_max_salary - eng_max_salary)
print(result)