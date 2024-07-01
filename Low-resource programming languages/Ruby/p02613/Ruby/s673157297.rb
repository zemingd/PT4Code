n = gets.chomp.to_i
arr = Array.new(4,0)
n.times do 
  result = gets.chomp
  arr[0] += 1 if result == 'AC'
  arr[1] += 1 if result == 'WA'
  arr[2] += 1 if result == 'TLE'
  arr[3] += 1 if result == 'RE'
end

puts "AC × #{arr[0]}"
puts "WA × #{arr[1]}"
puts "TLE × #{arr[2]}"
puts "RE × #{arr[3]}"