n,k = STDIN.gets.split(' ').map{|s| s.to_i}
a   = STDIN.gets.split(' ').map{|s| s.to_i}

r = []
n.times do |i|
#  puts "i:#{i} i+k:#{i+k}"
  break if i + k > n
  r[i] = a[i...(i+k)].inject(0){|sum, v| sum += v}
end

s = r.index(r.max)
puts a[s...(s+k)].map{|v|
  # expected_value
  (1..v).map{|i| i / (v * 1.0)}.inject(0){|sum, i| sum += i}
}.inject(0){|sum, e|
  sum += e
}




