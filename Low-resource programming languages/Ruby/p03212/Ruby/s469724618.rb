N = gets.to_i
result = 0

s = 27
while true do
  d4 = s.to_s(4).gsub(/1|2|3/, '1' => '3', '2' => '5', '3' => 7)
  if d4.to_i > N
    break
  end

  if /3/.match(d4) && /5/.match(d4) && /7/.match(d4) && /^[357]+$/.match(d4)
    result += 1
  end

  s += 1
end

puts result


