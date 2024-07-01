gets.to_i.times do
  z = gets.split.map(&:to_r)
  a = (z[3]-z[1])/(z[2]-z[0])
  b = (z[7]-z[5])/(z[6]-z[4])
  puts a == b ? 'YES' : 'NO'
end