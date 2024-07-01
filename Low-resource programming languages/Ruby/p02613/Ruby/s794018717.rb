n = gets.to_i
result = { AC: 0, WA: 0, TLE: 0, RE: 0}
n.times do
  s = gets.chomp.to_s
  result[s.to_sym] += 1
end

puts "AC x #{result[:AC]}" 
puts "WA x #{result[:WA]}" 
puts "TLE x #{result[:TLE]}" 
puts "RE x #{result[:RE]}" 
