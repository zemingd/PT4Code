s = gets.strip
count = 0
res = 0
changed = false
#p s
loop do
  count = 0
  until (count + 1) >= s.length do
    #p count
    if s[count] != s[count + 1]
      s.slice!(count)
      s.slice!(count)
      res += 2
      changed = true
      #count += 1
      # if s[count-1] != s[count]
      #   s.slice!(count-1)
      #   s.slice!(count-1)
      #   res += 2
      # end
      count -= rand(1)
    else
      count += 1
    end
    #p s
  end
  #p "--"
  #p changed
  if !changed
    #puts res
    break
  end
  changed = false
  #p "--------"
end
puts res