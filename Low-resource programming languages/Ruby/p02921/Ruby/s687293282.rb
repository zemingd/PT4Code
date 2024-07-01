will_days = gets.split("")
days = gets.split("")

m = 0
3.times do |i|
  m += 1 if will_days[i] == days[i]
end
p m