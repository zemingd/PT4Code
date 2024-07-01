N = gets.to_i
S = N.times.map { gets.chomp }

h = Hash.new(0)
S.each { |s| h[s] += 1 }

ans = []
h.each do |k,v|
  ans << k if v == h.values.max
end
ans.sort.each do |a|
  puts a
end