H=gets.chomp.to_i
def fu(h)
  return if h==1
  return  2 * f(h / 2) + 1
end
puts f