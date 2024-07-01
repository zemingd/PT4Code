gets.chomp.to_i.times do
  x1,y1,x2,y2,x3,y3,x4,y4 = gets.split.map(&:to_f)
  s1 = (y2-y1) / (x2-x1)
  s2 = (y4-y3) / (x4-x3)
  if s1 == s2 then puts "YES"
  else puts "No"
  end
end