ary = gets.chomp.split(' ').map{ |i| i.to_i }.sort
ary.each_with_index{ |x,i|
  if i < ary.size-1
    print "#{x} "
  else
    print "#{x}\n"
  end
}