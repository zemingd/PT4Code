
str = STDIN.gets.chomp.to_i

one = str.digits.first

case one
when 2,4,5,7,9
  p "hon"
  break
when 0,1,6,8
  p "pon"
  break
when 3
  p "bon"
  break
end