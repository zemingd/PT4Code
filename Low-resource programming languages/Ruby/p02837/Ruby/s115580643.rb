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

    if xy.all? { |x, y| bit[x - 1] == y }
      count += 1
    else
      count = 0
      break
    end
  end

  ans = count if count >= ans
end

puts ans
