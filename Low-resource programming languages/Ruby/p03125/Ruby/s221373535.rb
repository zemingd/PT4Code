A,B = gets.strip.split.map(&:to_i)

if B%A == 0 then
  put A+B
else
  puts B-A
end