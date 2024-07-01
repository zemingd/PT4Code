n = gets.chomp.to_i
s = gets.chomp
ans = n
0.upto(n) do |i|
  count = 0
  e = 0
  0.upto(i-1) do |j|
    if s.split("").at(j) == "W" then
      e += 1
    end
  end
  w = 0
  (i+1).upto(n) do |j|
    if s.split("").at(j) == "E" then
      w += 1
    end
  end
  if ans > e+w then
    ans = e+w
  end
end
puts ans
