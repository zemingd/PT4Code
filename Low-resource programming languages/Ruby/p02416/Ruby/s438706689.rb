while s=gets.strip
  puts (1..s.size).reduce{|sum, i| s[sum].to_i+s[i].to_i}
end