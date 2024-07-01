l,r = gets.chomp!.split(" ").map(&:to_i)

min = l % (2019 * 2)
max = r % (2019 * 2)

if min >= max
    puts 0
else
    ans = 9999999
    min.upto(max - 1) do |i|
        (i + 1).upto(max) do |j|
            x = (i * j) % 2019
            if x < ans
                ans = x
            end
        end
    end

    puts ans
end
