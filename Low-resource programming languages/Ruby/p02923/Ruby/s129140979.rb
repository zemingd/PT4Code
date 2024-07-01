n = gets.to_i
heights = gets.split.map(&:to_i)

i = 0
cnt = 0
records = [0]

if n >= 2 then
  while i <= n-2 do
    if heights[i]>=heights[i+1] then
      cnt += 1
      records= records.push(cnt)
    else
      records= records.push(cnt)
      cnt = 0
    end
    i += 1
  end
end
  
puts records.max