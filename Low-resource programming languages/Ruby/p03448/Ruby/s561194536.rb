a = gets.to_i # 500 
b = gets.to_i # 100 
c = gets.to_i #  50 
x = gets.to_i

ans = 0
(0..a).each{ |a_|
    (0..b).each{ |b_|
        (0..c).each{ |c_|
            ans += 1 if 500 * a_ + 100 * b_ + 50 * c_ == x
        }
    }
}

puts ans
