a,b,c = gets.chomp.split(" ").map(&:to_i)
puts 21 < a+b+c ? 'bust' : 'win'
