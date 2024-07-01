a = gets.chomp.chars
b = gets.chomp.chars
puts a.zip(b).all?{|a, b| a == b} && a.size + 1 == b.size ? 'Yes' : 'No'
