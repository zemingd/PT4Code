n = gets.chomp.to_i

h = { 'AC' => 0, 'WA' => 0, 'TLE' => 0, 'RE' => 0 }
n.times do
  s = gets.chomp
  h[s] += 1
end

puts "AC x #{h['AC']}"
puts "WA x #{h['WA']}"
puts "TLE x #{h['TLE']}"
puts "RE x #{h['RE']}"
