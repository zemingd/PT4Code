3.times do |i|
    a = gets.chomp.to_i
    if i == 0
        ans = a
    end
    if i == 1
        ans -= a
    end
    if i == 2
        amari = ans % b
    end
end
puts amari
