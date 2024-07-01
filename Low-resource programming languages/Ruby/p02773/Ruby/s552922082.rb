N = gets.to_i
h = Hash.new(0)
N.times.map { h[gets.chomp] += 1 }

ans = []
h.each do |k,v|
  ans << k if v == h.values.max
end
ans.sort.each do |a|
  puts a
end