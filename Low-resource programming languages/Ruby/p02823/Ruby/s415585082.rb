N, A, B = gets.chop.split.map(&:to_i)
 
if B-A % 2 == 0
  print(B-A / 2)
else
  print((B - A - 1) / 2 + A)