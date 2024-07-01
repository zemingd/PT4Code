ans = 0
amari = 0
3.times do |i|
    a = gets.chomp.to_i
    if i == 0
        ans = a
    elsif i == 1
        ans -= a
    elsif i == 2
        amari = ans % a
    end
end
puts amari
