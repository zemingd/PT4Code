H = {}
999.times {|i| H[i**5] = i; H[-i**5] = -i}
x = gets.to_i
999.times {|a;b|
  y = a**5
  break puts [b, a]*' '  if b = H[x+y]
  break puts [b,-a]*' '  if b = H[x-y]
}