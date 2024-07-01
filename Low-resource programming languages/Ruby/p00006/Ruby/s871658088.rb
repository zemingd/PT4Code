def reverse(s)
  ret = ""
  
  (s.length-1).downto(0) do |i|
    ret << s[i]
  end

  ret
end

puts reverse(gets.chomp)