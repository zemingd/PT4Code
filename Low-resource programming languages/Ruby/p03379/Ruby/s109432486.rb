n=gets.chomp.to_i
 a = gets.split(' ').map(&:to_i)
n.times{ |t|
  a.delete_at(t)
  x =  a.sort
  y = n/2
  puts x[y]
}