 array = gets.split.map(&:to_i)
 a = gets.split.map(&:to_i)

 m = array[1]

 m.times do
   a[a.index(a.max)] /= 2
 end

 p a.inject(:+)


