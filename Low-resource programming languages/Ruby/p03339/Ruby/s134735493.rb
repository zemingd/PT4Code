n = gets.chomp.to_i
s = gets.chomp
ans = n
ws = Array.new(n, 0);
0.upto(n-1) do |i|
  if s.split("").at(i) == "W" then
    if i == 0 then
      ws[i] = 1
    else
      ws[i] = ws[i-1] + 1
    end
  else
    if i == 0 then
    else
      ws[i] = ws[i-1]
    end
  end
end
es = Array.new(n, 0);
(n-1).downto(0) do |i|
  if s.split("").at(i) == "E" then
    if i == n-1 then
      es[n-1] = 1
    else
      es[i] = es[i+1] + 1
    end
  else
    if i == n-1 then
    else
      es[i] = es[i+1]
    end
  end
end
0.upto(n-1) do |i|
  if i == 0 then
    check = es[1]
  elsif i == n-1 then
    check = ws[n-2]
  else
    check = ws[i-1] + es[i+1]
  end
  if ans > check then
    ans = check
  end
end
puts ans
