s = gets.chomp
t = gets.chomp
days = s.length
success = 0
days.times do |day|
  success += 1 if s[day] == t[day]
end
puts success