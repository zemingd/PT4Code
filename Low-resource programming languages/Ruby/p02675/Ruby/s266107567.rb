val = gets.split.first.to_i
val = val % 10

case val
when 2, 4, 5, 7, 9 then
  p 'hon'
when 0, 1, 6, 8 then
  p 'pon'
else
  p 'bon'
end