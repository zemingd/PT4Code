s = gets.chomp.split('')

start_zero = 0
start_one = 0
s.size.times do |i|
  if i%2 == 0
    start_zero += 1 if s[i] != '0'
    start_one += 1 if s[i] != '1'
  else
    start_zero += 1 if s[i] != '1'
    start_one += 1 if s[i] != '0'
  end
end

puts([start_zero, start_one].min)