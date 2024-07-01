x, k, d = gets.chomp.split(" ").map(&:to_i)

if x > 0
    kaisuu = x / d
    if x - k * d >= 0
        puts x - k * d
    else
        sei = x - kaisuu * d
        nokori = k - kaisuu
        hu = sei - d
        if sei > 0
            if nokori % 2 == 0
                puts sei
            else
                puts hu
            end
        elsif sei == 0
            seimae = x - (kaisuu-1)*d
            mannaka = x - kaisuu * d
            huato = x - (kaisuu+1)*d
            zenbu = k -(kaisuu-1)
            if zenbu % 4 == 0
                puts seimae
            elsif zenbu % 4 == 1 || zunbu % 4 == 3
                puts "0"
            elsif zenbu % 4 == 2
                puts huato
            end
        end
    end
elsif x == 0
    if k % 4 == 1
        puts x + d
    elsif k % 4 == 0 || k % 4 == 2
        puts x
    elsif k % 4 == 3
        puts x - d
    end
elsif x < 0
    kaisuu = x.abs / d
    if x + k * d <= 0
        puts x + k * d
    else
        sei = x + kaisuu * d
        nokori = k - kaisuu
        hu = sei - d
        if sei < 0
            if nokori % 2 == 0
                puts sei
            else
                puts hu
            end
        elsif sei == 0
            seimae = x + (kaisuu-1)*d
            mannaka = x + kaisuu * d
            huato = x + (kaisuu+1)*d
            zenbu = k -(kaisuu-1)
            if zenbu % 4 == 0
                puts seimae
            elsif zenbu % 4 == 1 || zenbu % 4 == 3
                puts "0"
            elsif zenbu % 4 == 2
                puts huato
            end
        end
    end
end