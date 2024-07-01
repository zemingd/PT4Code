line = gets
i = line.length - 1
p line[i]

case line[i]
when 3
  p 'bon'
when 2 , 4 , 5 , 7  , 9
  p 'hon'
when 0 , 1 , 6 , 8
  p 'pon'
end
