num = gets.to_i
(1..num).each {|i|
  if i % 3 == 0 
    print " #{i}"
  elsif i % 10 == 3
    print " #{i}"
  else
    x = i / 10
    if x % 10 == 3
      print " #{i}"
    end
  end
}
puts