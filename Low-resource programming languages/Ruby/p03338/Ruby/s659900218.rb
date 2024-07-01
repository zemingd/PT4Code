n = gets.to_i
s = gets.chomp.chars
hs = Hash.new
s.each_with_index do |c, i|
  hs[c] ||= []
  hs[c] << i
end

# imos method
res =  Array.new(n, 0)
hs.to_a.each do |k, v|
  next if v.size < 2
  l = v[0]
  r = v[-1]
  res[l] += 1
  res[r] -= 1
end
(1...n).each do |i|
  res[i] += res[i - 1]
end
puts res.max