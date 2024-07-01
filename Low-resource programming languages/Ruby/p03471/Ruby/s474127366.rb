n, y = gets.split.map(&:to_i)
x = y / 1000

ans = []
(0..n).each do |i|
  tmp = x - n - 4 * i
  if tmp < 0 || 10 * n - x - 5 * i < 0
    break
  end
  if tmp % 9 == 0
    ans = [tmp / 9, i, n - i - tmp / 9]
    break
  end
end

ans = [-1, -1, -1] if ans.empty?
puts ans.join(' ')