num = gets.to_i
arr = gets.split.map(&:to_i)
endi = num - 1
count = 0

loop do
  while endi >= 1 do
    break if arr[endi] < arr[endi - 1]
    endi -= 1
  end

  break if endi == 0

  while endi >= 1 do
    if arr[endi] < arr[endi - 1]
      arr[endi], arr[endi - 1] = arr[endi-1], arr[endi]
      count += 1
      endi -= 1
    else
      break
    end
  end
  endi = num - 1
end

puts arr.join(" ")
puts count

