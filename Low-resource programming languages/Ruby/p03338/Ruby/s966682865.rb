n = gets.chomp.to_i
s = gets.chomp
ans = 0
0.upto(n) do |i|
  count = 0
  as = []
  0.upto(i) do |j|
    if !as.include?(s.split("").at(j)) then
      as.push(s.split("").at(j))
    end
  end
  bs = []
  (i+1).upto(n) do |j|
    if !bs.include?(s.split("").at(j)) then
      bs.push(s.split("").at(j))
    end
  end
  as.each do |char|
    if bs.include?(char) then
      count += 1
    end
  end
  if ans < count then
    ans = count
  end
end
puts ans
