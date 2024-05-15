import pandas as pd

def find_managers(employee: pd.DataFrame) -> pd.DataFrame:
    result = employee.groupby('managerId')['managerId'].agg(count='count').reset_index()
    result = result[result['count']>=5]
    i = result['managerId']
    ans = employee[employee['id'].isin(i)]
    return ans[['name']]
