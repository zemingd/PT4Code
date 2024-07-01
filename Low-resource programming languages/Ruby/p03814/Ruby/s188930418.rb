s = gets.chomp
flag = true
i = 0
a=z=0
s.each_char do |c|
  if c == "A" && flag
    flag = false
    a = i
  end
  if c =="Z"
    z = i
  end
  i += 1
end

puts z-a+1
