count = gets.to_i

hash = {'AC' => 0, 'WA' => 0, 'TLE' => 0, 'RE' => 0}

count.times do
  result = gets.chomp
  hash[result] = hash[result] + 1
end

puts "AC x #{hash['AC']}"
puts "WA x #{hash['WA']}"
puts "TLE x #{hash['TLE']}"
puts "RE x #{hash['RE']}"