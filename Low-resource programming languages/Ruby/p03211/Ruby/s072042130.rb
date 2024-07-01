s = readline.chomp
ans = (s.length-2).times.each.map do |i|
  ( (s[i] + s[i+1] + s[i+2]).to_i - 753 ).abs
end.min
puts ans
