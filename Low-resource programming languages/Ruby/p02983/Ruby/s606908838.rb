l, r = gets.chomp.split(' ').map(&:to_i)

ans = 2018
l.upto(r) do |i|
    i_mod = i % 2019
    if i == r
        puts(i % 2019)
        exit
    end
    (i+1).upto(r) do |j|
        ans_kouho = (i_mod * (j % 2019)) % 2019
        ans =  ans_kouho if ans_kouho < ans
        if ans == 0
            puts(0)
            exit
        end
    end
end
puts(ans)