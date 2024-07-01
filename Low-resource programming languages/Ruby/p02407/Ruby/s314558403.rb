n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)
puts "#{a.reverse.join(' ')}"