while true
  ans = 0
a = gets.chomp
b = a.split("").map(&:to_i)
c = b.length
break if a == "0"
  for num in 0..c-1 do
      ans += b[num]
  end
  p ans
end  
