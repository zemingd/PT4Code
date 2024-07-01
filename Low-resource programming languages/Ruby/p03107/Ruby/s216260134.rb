s=gets.chomp
originLength = s.length
count = 0
loop do
  flag1 = s.gsub!(/10/,"")
  flag2 = s.gsub!(/01/,"")
  break if flag1 == nil && flag2 == nil
end
puts originLength - s.length