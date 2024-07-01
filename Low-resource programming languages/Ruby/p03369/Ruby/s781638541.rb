s = gets.strip.to_s
price = 700

3.times do |i|
    s[i] == "o" ? price += 100 : nil
end

puts price