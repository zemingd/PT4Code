s = gets.chomp.split("")
count = 700
s.each do |i|
    if i == "o"
        count += 100
    end
end
puts count