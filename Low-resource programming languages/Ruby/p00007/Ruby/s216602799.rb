money = 100000
week = gets.chomp.to_i
week.times do |n|
    money *= 1.05
    if money % 1000 > 0
        money = (money.to_i / 1000) * 1000 + 1000
    end
end
puts money