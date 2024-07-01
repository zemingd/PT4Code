n = gets.to_i
array = gets.split
array.size.downto(1).with_index do |e, i|
  print( i == 0 ? "#{e}" : " #{e}")
end