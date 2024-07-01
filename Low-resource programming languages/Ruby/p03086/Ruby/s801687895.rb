s = gets.chomp.split("")
count = 0
max = 0
for i in 0..s.length-1 do
    if s[i] == "A" ||s[i] == "T" ||s[i] == "G" ||s[i] == "C"
        count += 1
    else
        count = 0
    end
    if count > max
        max = count
    end
end

puts max