n,k = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
a_arr.each do |a|
  hash[a] ||= 0
  hash[a] += 1
end

arr = hash.to_a.sort_by{|a, count| -count}[k..-1]

result = 0
arr&.each do |(a, count)|
  result += count
end

puts result
