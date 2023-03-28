
import pandas as pd
data=pd.read_csv("C:/Users/malha/OneDrive/Desktop/docs/Project Work/T20.csv")
print(data)

result = data.Result
result
inp = {'Index':range(0,22),
       'Result':result}
result1 = pd.DataFrame(inp)

LW = 0
LL = 0
WL = 0
WW = 0

i = 0

n_rows = result1.shape[0]

for i in range(n_rows -1):
        j = i + 1
        k = result1.Result[i]
        l = result1.Result[j]

        if k == 'L' and l == 'W':
            LW = LW+1
        elif k == 'L' and l == 'L':
            LL = LL+1
        elif k == 'W' and l == 'L':
            WL = WL + 1
        elif k == 'W' and l == 'W':
            WW = WW + 1

print(LW)
print(LL)
print(WL)
print(WW)

inp1 = {' ': (' ','W','L'),
        'Next Match':('W',WW,LW),
        'Result':('L',WL,LL)}

import pandas as pd
matrix = pd.DataFrame(inp1, index = (' ','Current Match ','Result'))
matrix

matrix.style.set_properties(**{'background-color': 'black',
                           'color': 'green'})

print(matrix)