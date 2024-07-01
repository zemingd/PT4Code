n,m,k = gets.chomp.split(" ").map(&:to_i)
a = [0] + gets.chomp.split(" ").map(&:to_i)
b = [0] + gets.chomp.split(" ").map(&:to_i)

i = 0
j = 0
max = 0

s = 0
t = 0
while i <= n
  s += a[i]
  t = s
  while j <= m
    t += b[j]
  	break if k <= t
    
    max = [i+j, max].max
    j += 1
  end
  i += 1
end
  
puts max
