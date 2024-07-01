n,k = gets.split(' ').map(&:to_i)
ans = 0

if n>=k
  ans +=(n-k+1)/n.to_f
end
#puts Math.log(8)
k2 = k.to_f
#puts k2
for i in 1..n
  jank = (Math.log(k2/i)/Math.log(2)).floor(0) +1
#  puts jank
#  y = 1/2.to_f
#  x = 1/n.to_f
#  ans += x*(y**jank).to_f
#  ans += ((1/n)*((1/2)**jank)).to_f
# puts x*(y**jank).to_f
  #puts 1.0/n * 0.5**jank
  ans += 1.0/n * 0.5**jank
end
puts ans

