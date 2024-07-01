a, b = gets.chomp.split(" ").map(&:to_i)
(1..10000).each do |i|
    hachi = i * 8 / 100
    zyuu = i *10 / 100
    if hachi.floor == a && zyuu.floor == b
        puts i
        exit
    end
end
puts "-1"