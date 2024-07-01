a,b = gets.chomp.split.map(&:to_i)
print(((a+b)*1.0 / 2).ceil)