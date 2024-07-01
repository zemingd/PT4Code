n = gets.to_i
a = gets.split(' ').map(&:to_i)

a.length.times{|i| print("#{a.index(i + 1) + 1} ")}