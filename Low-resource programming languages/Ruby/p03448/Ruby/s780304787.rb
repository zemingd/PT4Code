a = gets.chomp.to_i + 1
b = gets.chomp.to_i + 1
c = gets.chomp.to_i + 1
x = gets.chomp.to_i
ans = 0
a.times do |i|
    b.times do |j|
        c.times do |l|
            ans += 1 if i*500 + j*100 + l*50 == x
        end
    end
end

puts ans