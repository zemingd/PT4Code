n = gets.chop.to_i


table = Hash.new(0)
ans = 0

n.times do
  s = gets.chop.chars.sort.join

  if table.has_key?(s) then
    ans += table[s]
  end

  table[s] += 1
end

## charsで分解し、joinでくっつける

print ans