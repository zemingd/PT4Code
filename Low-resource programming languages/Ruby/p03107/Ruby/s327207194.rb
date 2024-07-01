s=gets.chomp
count = 0
loop do
  flag1 = s.sub!(/10/,"")
  count += 2 if flag1 != nil
  flag2 = s.sub!(/01/,"")
  count += 2 if flag2 != nil
  break if flag1 == nil && flag2 == nil
end
puts count