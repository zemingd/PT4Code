def saiki(n, pattern, count) 
  if n < pattern[1] then
    if n <  pattern[0] then
      return count + n
    else
      return count + n + 1 - pattern[0]
    end
  end
 
  newP = pattern.select{|i| i <= n}
  one = newP[-1]
  two = newP[-2]
  #puts n, one, two
  count1 = saiki(n-one, pattern, count + 1) 
  count2 = saiki(n-two, pattern, count + 1)
  count = count1 < count2 ? count1 :count2
end

n = gets.to_i
count = 0
rui6 = [*1..6].map {|item|  6**item }
rui9 = [*1..5].map {|item|  9**item }
pattern = [].concat(rui6).concat(rui9).sort
count = saiki(n, pattern, 0)
puts count


