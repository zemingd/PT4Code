#frozen_sr\tring_literal: true

a = gets.chomp.to_i + 1
b = gets.chomp.to_i + 1
c = gets.chomp.to_i + 1
x = gets.chomp.to_i
cnt = 0
a.times do |s|
    b.times do |t|
        c.times do |u|
            if s * 500 + t * 100 + u * 50 == x
                cnt += 1
            end
        end
     end
end

puts cnt