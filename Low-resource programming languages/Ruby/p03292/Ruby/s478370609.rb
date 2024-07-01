a,b,c = gets.chomp.split.map(&:to_i)

A = (a-b).abs
B = (b-c).abs
C = (c-a).abs

arr = [A, B, C].sort!

p arr[0]+arr[1]