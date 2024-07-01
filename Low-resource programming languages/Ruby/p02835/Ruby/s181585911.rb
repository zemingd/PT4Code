a, b, k = gets.chomp.split.map(&:to_i)
puts a+b+k >=22 ? 'bust' : 'win'