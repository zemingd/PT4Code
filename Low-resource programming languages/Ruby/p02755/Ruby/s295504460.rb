a, b = gets.chomp.split(" ").map(&:to_i)
(1..100).each do |i|
    hachi = i * 8 / 100
    zyuu = i *10 / 100
    if hachi == a && zyuu == b
        puts i
        exit
    end
end
puts "-1"