n = gets.to_i

count_ac = 0
count_wa = 0
count_tle = 0
count_re = 0

n.times do
  a = gets.chomp
  count_ac += 1 if a.match?(/^AC$/)
  count_wa += 1 if a.match?(/^WA$/)
  count_tle += 1 if a.match?(/^TLE$/)
  count_re += 1 if a.match?(/^RE$/)
end

puts "AC x #{count_ac}\nWA x #{count_wa}\nTLE x #{count_tle}\nRE x #{count_re}"