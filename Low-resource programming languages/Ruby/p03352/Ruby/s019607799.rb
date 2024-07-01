x = gets.chomp.to_i
n = 1
32.times do |i|
        if n * n > x
                n -= 1
                break
        end
        n += 1
end
puts "#{n * n}"