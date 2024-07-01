s = gets.chop.chars

color = '0'
count1 = 0
s.each do |c|
    count1 += 1 if c != color
    color = color == '0' ? '1' : '0'
end
   
color = '1'
count2 = 0
s.each do |c|
    count2 += 1 if c != color
    color = color == '0' ? '1' : '0'
end
   
ans = [count1, count2].min
puts ans