n = gets.to_i
a_list = gets.chomp.split(' ').map(&:to_i)
symbol = 1
crash = 0
a_list.each do |a_i|
  if a_i == symbol
    symbol += 1
  else
    crash += 1
  end
end
puts crash == n ? -1 : crash
