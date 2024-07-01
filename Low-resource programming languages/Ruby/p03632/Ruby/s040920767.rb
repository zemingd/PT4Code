s = gets.split.map(&:to_i)
start2 = [s[0] ,s[2] ].max
end1 = [s[1] ,s[3] ].min
ti = end1 - start2
if ti < 0 then
  ti = 0
else ti
end
puts ti