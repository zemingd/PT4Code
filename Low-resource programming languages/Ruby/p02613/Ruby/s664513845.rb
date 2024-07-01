n = gets.to_i

cnt = {AC: 0, WA: 0, TLE: 0, RE: 0}
n.times do
  s = gets.chomp
  cnt[s.to_sym] += 1
end

puts "AC x #{cnt[:AC]}"
puts "WA x #{cnt[:WA]}"
puts "TLE x #{cnt[:TLE]}"
puts "RE x #{cnt[:RE]}"