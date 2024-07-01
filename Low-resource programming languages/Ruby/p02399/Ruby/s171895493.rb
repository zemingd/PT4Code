i,j = gets.split.map(&:to_i)
puts "#{i/j} #{i%j} #{sprintf("%.9f", i.to_f/j)}"