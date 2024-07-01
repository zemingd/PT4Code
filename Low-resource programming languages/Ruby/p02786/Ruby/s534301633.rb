H = gets.chomp.to_i
cnt = 0

while 1 do
  if H < 2 ** cnt
    break
  end
  cnt += 1
end
puts (2 ** cnt) - 1