n = gets.to_i
array = Array.new

n.times do
  array.push(gets.chomp)
end

puts "AC x #{array.count('AC')}"
puts "WA x #{array.count('WA')}"
puts "TLE x #{array.count('TLE')}"
puts "RE x #{array.count('RE')}"
