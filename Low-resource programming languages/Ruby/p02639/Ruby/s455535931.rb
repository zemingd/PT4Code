arr = gets.chomp.split().map(&:to_i)
a = arr.select { |i| i == 0 }
print(a.map{|i| i+1}.join(' '))