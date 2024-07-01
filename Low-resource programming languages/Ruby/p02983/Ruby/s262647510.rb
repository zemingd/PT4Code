l, r = gets.split.map(&:to_i)
if r - l + 1 >= 673
    puts 0
elsif r == 672 && l == 673
    puts 672
else
    mods = (l..r).map{|it| it % 2019}
    puts mods.combination(2).map{|a, b| a * b % 2019}.min
end
