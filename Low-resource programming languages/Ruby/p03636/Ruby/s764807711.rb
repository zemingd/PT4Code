s = gets.chomp
print("#{s[0]+s[1..-2].size().to_s + s[-1]}")