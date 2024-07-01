n,k = STDIN.gets.split(' ').map{|s| s.to_i}
a   = STDIN.gets.split(' ').map{|s| s.to_i}

e   = a.map{|v| (v+1)/2.0}

r = []
n.times do |i|
  r[i] = e[0..i].inject(0){|sum,v| sum += v}
end


s_list = []
n.times do |i|
#  puts "i:#{i} r[(i-1)+k]:#{r[(i-1)+k]} r[i-1]:#{r[i-1]}"
  break if i + k > n
  s_list << r[(i-1)+k] - (i == 0 ? 0 : r[i-1])
end

puts s_list.max



