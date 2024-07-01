fline = readlines
row = fline[0].to_i
result = 0
if row < 105 then
elsif row = 105 then
  result = 1
else
  (105..row).each do |num|
    count = 0
    (3..num/2).each do |num2|
      if num % num2 == 0 then
        count += 1
      end
    end
    if count >= 8 then
      result++
    end
  end
end
puts result
