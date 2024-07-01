s = gets.chomp.chars
n = s.size

a = 0
b = 0
s.each_with_index do |ss, i|
  if i.odd? 
    if ss == "0"
      a += 1
    else
      b += 1
    end
  end
  if i.even? 
    if ss == "1"
      a += 1
    else
      b += 1
    end
  end
  
  # if i.odd? && ss == "1"
  #   b += 1
  # end
  # if i.even? && ss == "0"
  #   b += 1
  # end
end
puts [a, b].min