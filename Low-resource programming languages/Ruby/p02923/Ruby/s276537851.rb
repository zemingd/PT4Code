gets
H = gets.strip.split(" ").map(&:to_i)
if H.size == 1
  puts 0
  exit 0
end

ans = 0
cur = 0
i = 0
while i < H.size - 1 do
  if H[i] < H[i + 1]
    ans = cur if cur > ans
    cur = 0
  else
    cur += 1
  end

  i += 1
end

puts [ans, cur].max
