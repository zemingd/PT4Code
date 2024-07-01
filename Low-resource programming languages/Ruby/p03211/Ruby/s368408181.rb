s = gets.chomp.split("")
ret = 753
s.each_cons(3) do |x|
  n = x.join("").to_i
  d = (753 - n).abs
  if d < ret
    ret = d
  end 
end
puts ret