n = gets.chomp.to_i
str = gets.chomp
z = [] #XとYの重複要素を格納

( 0..(n - 2) ).each do |i|
  x = str[0..i].split("")
  y = str[(i + 1)..(n - 1)].split("")
  z_ = x & y
  p z_
  z = z_ if z_.size > z.size
end

print z.size