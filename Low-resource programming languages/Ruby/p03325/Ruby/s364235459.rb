n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i}
cnt = 0
b = true
i = 2
while b
        b = false
        a.each do |j|
                if j % i == 0
                        b = true
                        cnt += 1
                end
        end
        i *= 2
end
puts cnt