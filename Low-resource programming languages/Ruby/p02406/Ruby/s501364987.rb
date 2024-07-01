a=gets.to_i
a.times{ |i|
  if i%3 != 0  &&  /3/ !~ i.to_s then next end
  print " #{i}"
}
puts