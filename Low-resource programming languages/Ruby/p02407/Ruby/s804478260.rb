n = gets
array = gets.split
array.size.downto(1).with_index do |v, i|
  print i == 0 ? "#{v}": " #{v}" 
end
puts