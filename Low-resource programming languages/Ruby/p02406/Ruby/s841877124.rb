num=gets.to_i
(1..num).each do |i|
  if i%3==0
    print " #{i}"
  elsif i%10==3
    print " #{i}"
  else
    k=i
    while k/10 > 0
      k = k/10
      if k%10==3
        print " #{i}"
        break
      end
    end
  end
end
puts