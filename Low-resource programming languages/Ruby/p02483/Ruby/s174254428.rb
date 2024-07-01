a = gets.chomp.split(' ').map { |c| c.to_i }
a.sort.each_with_index { |x, i|
  if i == a.size-1
    print "#{x}\n"
  else
    print "#{x} "
  end
}