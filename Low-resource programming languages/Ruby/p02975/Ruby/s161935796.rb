N = gets.to_i
caps = gets.split.map(&:to_i)
check = caps.uniq

# 要素数が3の倍数、かつ、重複なしで3つ
if !(N % 3 == 0 || check == 3)
    puts 'No'
    exit
end

# それぞれの要素数が等しい
if check.select{|n| caps.count(n) == (N / 3)}.size != check.size
    puts 'No'
    exit
end

puts caps.inject{|acc, cap| acc ^ cap} == 0 ? 'Yes' : 'No'
