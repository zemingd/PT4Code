line = gets.split(' ')

num_hash = Hash.new{0}

line.each do |i|
  num_hash[i] += 1
end


if num_hash.values.include?(2)
  puts "Yes"
else
  puts "No"
end
