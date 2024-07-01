a,b,c = gets.split.map(&:to_i)
puts "#{a} #{b} #{c}" if a < b && b < c
puts "#{a} #{c} #{b}" if a < c && c < b
puts "#{b} #{a} #{c}" if b < a && a < c
puts "#{b} #{c} #{a}" if b < c && c < a
puts "#{c} #{a} #{b}" if c < a && a < b
puts "#{c} #{b} #{a}" if c < b && b < a