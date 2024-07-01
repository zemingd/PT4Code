A,B=gets.split.map(&:to_i)
if B%A === 0
 puts A + B
else
  puts B - A
end