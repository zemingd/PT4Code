left, right = gets.chomp.split.map(&:to_i)
MOD = 2019

if right - left >= MOD then
    puts 0
else
    ans = 1 << 40
    (left..right).each do |i|
        (left..right).each do |j|
            next if i == j
            tmp = i % MOD * j % MOD
            ans = tmp if tmp < ans
        end
    end
    puts ans
end