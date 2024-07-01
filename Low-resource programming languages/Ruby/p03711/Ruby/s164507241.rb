def define_group(s)
  case s
  when 1, 3, 5, 7, 8, 10, 12 then
    'a'
  when 4, 6, 9, 11 then
    'b'
  else
    'c'
  end
end  

x, y = gets.chomp.split(' ').map(&:to_i)
x_g = define_group(x)
y_g = define_group(y)
puts x_g == y_g ? 'Yes':'No'