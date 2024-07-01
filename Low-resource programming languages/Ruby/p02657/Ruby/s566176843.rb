i = 1
gets.split(' ').map do |int|
  i *= int.to_i
end
puts i
