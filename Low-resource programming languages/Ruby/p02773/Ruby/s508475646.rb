n = gets.chomp.to_i
s_arr = n.times.map{gets.chomp}

max = 0
hash = {}
s_arr.each do |s|
  count = (hash[s] || 0) + 1
  max = count if count > max
  hash[s] = count
end

arr = []
hash.each do |k, v|
  arr << k if v == max
end

arr.sort.each do |s|
  puts s
end
