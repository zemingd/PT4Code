require "prime"
x = gets.chomp.to_i
x.downto (1) do |i|
    ans = i.prime_division
    size = ans.size
    count = 0
    me = ans[0]
    ans.each do |j|
        if me == j && ans[0][1] != 1
            count += 1
        end
    end
    if count == size
        puts i
        break
    end
end