while true
  s = gets.chomp
  break if s == "0"
  l = s.length
  sum = 0
  for i in 1..l
    sum += s[i-1].to_i
  end
  puts sum
end