# abc168 A
n = gets.chomp.chars[-1]
puts(case n.to_i
when 2,4,5,7,9
  'hon'
when 0,1,6,8
  'pon'
when 3
  'bon'
end)
