s = gets.chomp.to_s
total = 700
n = 0
 
3.times do
    total += 100 if s[n] == "o"
    n += 1
end
 
puts total