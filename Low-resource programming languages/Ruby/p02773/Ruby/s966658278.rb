n = gets.strip.to_i
array = []
n.times do
  array << gets.strip.to_s
end

array.sort!

unique = array.uniq

hash = {}
unique.each do |word|
  count = array.count { |a| a == word }
  hash.merge!(word: count)
end

sorted_array = hash.sort_by {|k, v| -v}
highest_count = sorted_array.first[1]

output_hash = hash.select{|k, v| v == highest_count}
output_hash.keys.each |key|
  puts 'key'
end


