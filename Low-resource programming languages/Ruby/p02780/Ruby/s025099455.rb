n,k = STDIN.gets.split(' ').map{|s| s.to_i}
a   = STDIN.gets.split(' ').map{|s| s.to_i}

e   = a.map{|v| (v+1)/2.0}

$memo = []
r = []
n.times do |i|
  r[i] = e[i] + (i == 0 ? 0 : $memo[i-1])
  $memo[i] = r[i]
end
# p e
# p r
# p $memo

s_list = []
n.times do |i|
#  puts "i:#{i} r[(i-1)+k]:#{r[(i-1)+k]} r[i-1]:#{r[i-1]}"
  break if i + k > n
  s_list << r[(i-1)+k] - (i == 0 ? 0 : r[i-1])
end

puts s_list.max