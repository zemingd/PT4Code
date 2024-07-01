x, k ,d = gets.chomp.split(" ").map(&:to_i)
#今いる座標
#ｋkaisuu
#d idou
x = x.abs

kyori = x - k * d
if x > 0
    if kyori > 0
        puts kyori
    elsif kyori == 0
        puts "0"
    elsif kyori < 0
        mae = x / d
        maekyori = x - d * mae
        usiro = x - d * (mae + 1)
        kaizuu = k - mae
        if maekyori != d
            if kaizuu % 2 == 0
                puts maekyori.abs
            else
                puts usiro.abs
            end
        elsif maekyori == d
            if kaizuu % 4 == 1 || kaizuu % 4 == 3
                puts "0"
            else
                puts maekyori.abs
            end
        end
    end
elsif x == 0
    if k % 4 == 1 || k % 3 == 3
        puts d.abs
    else
        puts "0"
    end
end