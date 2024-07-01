n = gets.chomp.to_i
s = gets.split.map(&:to_s)
result = "Three"
result = "Four" if( s.include?("Y") )
puts result