n = gets.to_i
xys = n.times.map do
  a = gets.to_i
  a.times.map { gets.split.map(&:to_i) }
end

ans = 0

(1 << n).times do |bit|
  count = 0

  xys.each_with_index do |xy, i|
    next if bit[i] == 0

    valid = true
    xy.each do |x, y|
      next if bit[x - 1] == y

      valid = false
    end

    if valid == true
      count += 1
    else
      count = 0
      break
    end
  end

  ans = count if count >= ans
end

puts ans
