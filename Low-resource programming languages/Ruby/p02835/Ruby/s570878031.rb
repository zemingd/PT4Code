a,b,c = gets.split(" ").map(&:to_i)
puts 21 < a+b+c ? 'bust' : 'win'