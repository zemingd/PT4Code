n = gets.to_i
n.times { |i|
  x = i+1
  if (x%3==0)
    print " #{x}"
    next
  end

  while(x>0)
    if (x%10 == 3)
      print " #{x}"
      x=0
    end
    x/=10
  end
}