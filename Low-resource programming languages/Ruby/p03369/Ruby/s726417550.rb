line = gets.split('')
ramen = 700
line.each do |l|
 ramen+=100 if l == "o"
end

puts ramen