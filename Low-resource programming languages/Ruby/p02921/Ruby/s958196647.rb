s = gets.split("")
t = gets.split("")
count = 0
3.times do |i|
  if s[i] == t[i]
    count += 1
  end
end

puts count