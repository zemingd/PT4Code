A,B=gets.split.map(&:to_i)
if B%A === 0
  A + B
else
  B - A
end