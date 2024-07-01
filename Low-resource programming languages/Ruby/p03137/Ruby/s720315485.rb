n,m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
if n>=m then
  print 0
  exit
end
a = a.sort
sum = 0
diff_array = []
a.each_with_index do |v,i|
  diff_array.push({"index": i, "value": v-a[i-1]}) if i-1 >= 0
end

diff_array.sort! do |a, b|
  b[:value] <=> a[:value]
end

(n-1).times do |i|
  diff_array[i][:set] = true
end

diff_array.sort! do |a, b|
  a[:index] <=> b[:index]
end

diff_array.each do |v|
  sum += v[:value] unless v[:set]
end
p sum