a, b, c, d = gets.chomp.split.map(&:to_i)

res_flg = 0
i = 0
while true do
  if i % 2 != 0
    a = a - d
  else
    c = c - b
  end
  if c <= 0 || a <= 0
    res_flg = 1 if c <= 0
    break
  end
  i += 1
end

puts res_flg == 1 ? 'Yes' : 'No'