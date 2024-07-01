#prime_divisionを用いた。
require "prime"
x = gets.chomp.to_i
x.downto (1) do |i|
    ans = i.prime_division
    size = ans.size
    count = 0
    if size == 1 && ans[0][1] != 1 && x >= 4
        puts i
        break
    elsif size >= 2 
        count = 0
        me = ans[0][1] 
        ans.each do |i|
            if me == i[1] && me != 1 
                count += 1
            end
        end
        if count == size
            puts i
            break
        end
    elsif x < 4
        puts "1"
        break
    end
end
