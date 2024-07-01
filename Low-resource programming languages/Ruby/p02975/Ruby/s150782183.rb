N = gets.to_i
caps = gets.split.map(&:to_i)
check = caps.uniq

p 0 ^ 0

# 要素数が3の倍数、かつ、重複なしで3つ、もしくは全部0
if !(N % 3 == 0 || check == 3) && caps.select{|cap| cap == 0}.size != caps.size
    puts 'No'
    exit
end

puts caps.inject{|acc, cap| acc ^ cap} == 0 ? 'Yes' : 'No'
