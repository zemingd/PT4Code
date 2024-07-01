L, R = gets.chomp.split(" ").map(&:to_i)
l = L % 2019
r = R % 2019

if L / 2019 != R / 2019 || L == 0
    puts 0
elsif l < 4 && r > 672
    puts 0
else
    ary = (l..r).to_a.map{|a| a %= 2019}.sort
    puts ary[0] * ary[1]
end
