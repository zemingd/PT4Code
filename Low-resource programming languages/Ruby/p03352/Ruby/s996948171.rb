x = gets.to_i
i = 0
while true
  if i ** 2 > x #iがはじめて
    break
  end
  i += 1
end
puts (i - 1) ** 2