a = gets.split("")
y = 700
a.each do |n|
  y += 100 if n == 'o'
end
puts y