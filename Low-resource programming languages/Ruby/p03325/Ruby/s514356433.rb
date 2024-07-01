require 'prime'

b = gets.chomp.to_i
a = []
a = gets.split.map(&:to_i)
n = []
cnt = 0
for i in 0..b-1
 n=[]
 n=Prime.prime_division(a[i])
 if n[0][0] == 2
     cnt += n[0][1]
 end
 end
 puts cnt