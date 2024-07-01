require "prime"
x = gets.chomp.to_i
x.downto (1) do |i|
    ans = i.prime_division
    if ans.size == 1 && ans[1] != 0 && i != 1
        puts i
        break
    elsif i == 1
        puts "1"
    end
end