n = int(input())
for i in range(n):
  sum = int(input()) + int(input())
  if len(str(sum)) >= 81:
    print 'overflow'
  else:
    print sum