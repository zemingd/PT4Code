while s=gets.strip
  c=0
  (0..s.size-1).each{|i| c+=s[i].to_i}
  puts c
end