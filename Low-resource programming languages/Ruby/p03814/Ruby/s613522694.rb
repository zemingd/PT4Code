s = gets.chomp
flag = false
i = 0
a=z=0
s.each_char do |c|
  if c == "A" && !flag
    flag = true
    a = i
  end
  if c =="Z" && flag
    z = i
    flag = false
  end
  i += 1
end

puts z-a+1
