w=gets
count = 0
while true
    t = gets
    if t =~ /END_OF_TEXT/
      break
    end
    if t[i] =~ /#{w}/
       count += 1
    end
end

puts count