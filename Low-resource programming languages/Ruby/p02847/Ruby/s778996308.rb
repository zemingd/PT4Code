weekday = 'SUN,MON,TUE,WED,THU,FRI,SAT'.split(',')
dic = {x:7 - i%7 for i,x in enumerate(weekday)}