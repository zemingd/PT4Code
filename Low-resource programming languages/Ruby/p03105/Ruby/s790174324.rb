a=gets.chomp.split.map(&:to_i)
b= a[1]-a[0]<0 ? 0 : a[1]/a[0]
puts a[2] <= (a[1]/a[1]) ? a[2] : a[1]/a[0]


