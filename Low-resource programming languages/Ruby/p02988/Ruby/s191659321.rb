
n = gets.to_i
p = gets.chomp.split(" ").map(&:to_i)

ans = 0
for i in 0..n-3
  if (p[i] < p[i+1] && p[i+1] < p[i+2] ) || (p[i] > p[i+1] && p[i+1] > p[i+2])
     ans += 1
   end
 end
 puts ans