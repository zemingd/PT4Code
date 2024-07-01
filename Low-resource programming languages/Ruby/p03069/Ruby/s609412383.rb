
n = gets.chomp.to_i
n += 1


s = gets.chomp

m = s =~ /#/

result1 = 0
result2 = 0

tbn = 0


if m == nil
  puts 0


else

  sliced = s.slice(m, s.length)
  
  sliced.chars.each do |i|
    
    if i == "."
      result1 += 1
    else
      result2 += 1

    end

  end
  
  
  sliced.chars.reverse_each do |j|
    if j == "#"
      tbn += 1
    else
      break
    end
  end  


  result2 -= tbn

  if(result1 < result2)
    puts result1
  else
    puts result2
  end


end