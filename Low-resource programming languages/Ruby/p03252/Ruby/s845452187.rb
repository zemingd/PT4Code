before = gets.chomp
after = gets.chomp

i = 0



before.size.times do |i|
    c = before[i]
    if c != after[i]
        before.gsub!(c, "_") #tmp
        before.gsub!(after[i], c)
        before.gsub!("_", after[i])
    end
end

puts before == after ? "Yes" : "No"