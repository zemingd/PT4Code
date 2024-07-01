n,k = gets.strip.split.map(&:to_i)
num = gets.strip.split.map(&:to_i)
t = num.uniq.size
if t <= k
  puts 0
else
  puts t-k
end