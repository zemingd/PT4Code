s = gets.chomp.split("")
t = gets.chomp.split("")

n = 0

for i in 0..2 do
    if s[i] ==  t[i]
        n += 1
    end
end

puts n