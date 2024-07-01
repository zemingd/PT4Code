
( 1..gets.to_i ).each do |i|
  if ( i % 3 == 0 || i % 10 == 3 )
    print i.to_s+" "
    next
  end
  j = i
  while ( j > 0 ) do
    j /= 10
    if ( j % 10 == 3 )
      print i.to_s+" "
      j = 0
    end
  end
end
puts