gets.to_i.times { |i|
  if ((i+1)%3==0)
    print " #{i+1}"
    next
  end
     print " #{i+1}" if ((i+1)%10 == 3)
}
puts ""