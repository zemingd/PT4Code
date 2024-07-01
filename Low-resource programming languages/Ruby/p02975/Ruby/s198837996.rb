N = gets.to_i
caps = gets.split.map(&:to_i)
check = caps.uniq

# 要素数が3の倍数、重複なしで3つ、もしくは
if !(N % 3 == 0 && check == 3 || caps.select{|cap| cap == 0}.size == caps.size)
    puts 'No'
    exit
end

puts caps.inject{|acc, cap| acc ^ cap} == 0 ? 'Yes' : 'No'
