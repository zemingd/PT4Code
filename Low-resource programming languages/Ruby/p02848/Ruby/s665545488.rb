n = gets.to_i
s = gets.chomp
sar = s.split("")
answer = ""
sar.each do |i|
  if ((i.ord-64)+n)%26 == 0
    j = "Z"
  else
    j = ((((i.ord-64)+n)%26)+64).chr
  end
  answer += j
end
puts answer