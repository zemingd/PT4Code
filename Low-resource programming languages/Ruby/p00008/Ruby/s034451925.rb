while line = gets
  num = line.chomp

  cnt = 0

  10000.times do |i|

    str = sprintf("%04d",i)
    sum = str[0].to_i + str[1].to_i + str[2].to_i + str[3].to_i

    #puts str[0] +"-" + str[1]+"-" +str[2]+"-" +str[3]
    #puts str
    #puts sum

    if(sum.to_i == num.to_i)
      cnt = cnt +1
    end
  end

  puts cnt
end