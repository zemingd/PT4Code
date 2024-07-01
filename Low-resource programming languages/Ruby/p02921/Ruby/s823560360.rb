s = gets.chomp
t = gets.chomp

count = 0
3.times do |n|
    if s[n] == t[n]
        count += 1
    end
end

puts count
