n, a, b, c = gets.chomp.split(' ').map(&:to_i)
list = n.times.map { gets.chomp.to_i }

res = [a, b, c]
if res.all? { |x| list.find { |y| y == x } }
  puts 0
  exit 0
end

min_sum = 10_0000
0.upto(4 ** n - 1).each do |s|
  lens = [0, 0, 0, 0]
  sums = [0, 0, 0, 0]
  cs = s.to_s(4).rjust(n, '0').chars
  next if cs.count('1') == 0 || cs.count('2') == 0 || cs.count('3') == 0
  cs.map(&:to_i).each.with_index(0) do |d, i|
    lens[d] += list[i]
  end
  [1, 2, 3].each do |i|
    x = cs.count(i.to_s) - 1
    next if x <= 0
    sums[i] += x * 10
  end

  res.each.with_index(1) do |x, i|
    sums[i] += (x - lens[i]).abs
  end
  sum = sums[1] + sums[2] + sums[3]
  min_sum = sum if sum < min_sum
end
puts min_sum
