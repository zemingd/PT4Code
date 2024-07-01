n = gets.chomp
a_arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
a_arr.each do |a|
  hash[a] ||= 0
  hash[a] += 1
end

sum = 0
hash.each do |k, v|
  sum += v * (v - 1) / 2
end

a_arr.each do |a|
  puts sum - (hash[a] * (hash[a] - 1) / 2) + ((hash[a] - 1) * (hash[a] - 2) / 2)
end
