def ptc(x)
  i = 1
  until x == 0
    x = gets.to_i
    print "Case "
    print i
    print ": "
    puts x
    i += 1
  end
end

x = 2
ptc(x)