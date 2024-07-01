n = gets.strip.to_i
array = []
n.times do
  array << gets.strip.to_s
end

hash = Hash.new(0)
array.each { |word| hash[word] += 1 }

highest_count = hash.max_by {|k, v| v}[1]

hash.select{|k, v| v == highest_count}.each do |key, value|
  puts key
end
