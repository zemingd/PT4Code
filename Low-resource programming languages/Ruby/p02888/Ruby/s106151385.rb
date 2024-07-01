n = gets.to_i                                                                                            
ls = gets.split.map(&:to_i)
ls.sort!
last = nil
count = 0

i = 0
while i < ls.size - 2
  j = i + 1
  while j < ls.size - 1
    k = j + 1
    while k < ls.size
      if ls[i] < ls[j] + ls[k] &&
         ls[j] < ls[i] + ls[k] &&
         ls[k] < ls[i] + ls[j]
        if last != [ls[i], ls[j], ls[k]]
          count += 1
          last = [ls[i], ls[j], ls[k]]
        end
      end
      k += 1
    end
    j += 1
  end
  i += 1
end

puts count
