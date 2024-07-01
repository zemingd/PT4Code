W, H, x, y = map(int, input().split())

area = W*H/2

if x*2 == W and y*2 == H:
  m = 1
else:
  m = 0
  
print(str(area) + ' ' + str(m))