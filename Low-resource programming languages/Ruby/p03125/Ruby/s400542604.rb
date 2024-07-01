n = gets.split.map(&:to_i)
if n[1]%n[0] == 0
  p n[0]+n[1]
else
  p n[1]-n[0]
end