line1 = gets.split(' ')
line2 = gets.split(' ')
 
newline2 = line2.sort {|a, b| b.to_i <=> a.to_i } 
counter = 0
h = 0
 
while h <= line1[0].to_i - 3
  i = 1
  while i <= line1[0].to_i - 2
    j = 1
    while i + j <= line1[0].to_i - 1
      if newline2[h].to_i >= newline2[i].to_i + newline2[i+j].to_i || h > i || h > i+j
      else
        if newline2[h].to_i == newline2[i].to_i || newline2[h].to_i == newline2[i+j].to_i || newline2[i].to_i == newline2[i+j].to_i
        else
          counter += 1
        end
      end
      j += 1
    end
    i += 1
  end
  h += 1
end
 
 
p counter