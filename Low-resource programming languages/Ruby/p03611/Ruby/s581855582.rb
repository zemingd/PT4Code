n   = gets.to_i
ary = gets.split.map(&:to_i).sort

ans = [0, 0, 0]
i   = 0
max = 1

while i < n

  tempMax = 1
  first   = ary[i]

  loop do

    i += 1

    if i == n || ary[i] > first + 2
      break
    else
      tempMax += 1
    end
  end

  max = [tempMax, max].max
end

puts max
