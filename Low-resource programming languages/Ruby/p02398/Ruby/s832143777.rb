num = 0
a,b,c = gets.split(/\s/).map(&:to_i)  
while true
    if a == b
      break
    elsif c%a == 0
      num += 1
      a += 1
    else
      a += 1
    end
  end
print num,""