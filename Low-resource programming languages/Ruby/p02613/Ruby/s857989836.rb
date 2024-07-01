N = gets.to_i
count = { AC: 0, WA: 0, TLE: 0, RE: 0 }
N.times do
  key = gets.chomp.to_sym
  count[key] +=1
end

puts "AC x #{count[:AC]}"
puts "WA x #{count[:WA]}"
puts "TLE x #{count[:TLE]}"
puts "RE x #{count[:RE]}"
