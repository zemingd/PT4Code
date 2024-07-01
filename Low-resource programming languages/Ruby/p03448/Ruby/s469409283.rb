#!/usr/bin/env ruby

def main
    a = gets.to_i
    b = gets.to_i
    c = gets.to_i
    x = gets.to_i

    ans = 0
    (0..a).reverse_each do |a_|
        (0..b).reverse_each do |b_|
            if ((x - 500*a_ - 100*b_) / 50 <= c) && (x - 500*a_ - 100*b_ >= 0)
                ans += 1
            end
        end
    end
    puts ans
end

main