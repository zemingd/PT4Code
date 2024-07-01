catch(:label) do

  while line = gets  
    throw :label if line == "0 0\n"
    a = line.chomp.split(" ")

    p_0 = a[0].to_i
    p_1 = a[1].to_i
    if p_0 > p_1
      a[0] = p_1
      a[1] = p_0
    else
      a[0] = p_0
      a[1] = p_1
    end
    puts  a[0].to_s + " " + a[1].to_s + "\n"    
  end
end