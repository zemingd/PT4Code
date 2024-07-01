str = gets.chomp

ans = [str.count('0'), str.count('1')].min * 2

print("#{ans}\n")