require "prime"
#p 961.prime_division
x = gets.chomp.to_i
x.downto (1) do |i|
    ans = i.prime_division
    size = ans.map(&:to_s).size
    count = 0
    if size == 1 && ans[0][1] != 1 && x >= 4
        puts i
        break
    elsif x < 4
        puts "1"
        break
    end
    # if i >= 962 && i <= 999
    #     puts "961"
    #     exit
    # end
    # ans.each do |j|
    #     if j[1] != 1
    #         count += 1
    #     end
    # end
    # if count == size
    #     puts i
    #     exit
    # end
end