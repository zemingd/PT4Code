result = 1
a = gets
gets.chomp.split.map { |i| result *= i.to_i } # 入力

if 10 **18 < result
    puts -1
else
    puts result
end