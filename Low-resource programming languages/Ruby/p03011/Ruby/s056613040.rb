enter = gets.chomp.split(" ").map(&:to_i)
enter.sort!
sum = 0
for i in 0..enter.length-2 do
    sum = sum + enter[i]
end
puts sum