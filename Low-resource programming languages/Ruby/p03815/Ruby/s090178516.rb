x = gets.to_i
a = case x % 11
when 0
  0
when 1..6
  1
when 7..10
  2
end
p (x / 11)*2 + a
