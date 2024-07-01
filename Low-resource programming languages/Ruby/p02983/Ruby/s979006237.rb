L, R = gets.chomp.split(" ").map(&:to_i)
l = L % 2019
r = R % 2019
if L + (2019 - l) <= R 
    puts 0
else
    ans = nil
    (l..r-1).each do |i|
        (i+1..r).each do |j|
            val = (i * j) % 2019
            ans = ans.nil? ? val : [val, ans].min
        end
    end
    puts ans
end