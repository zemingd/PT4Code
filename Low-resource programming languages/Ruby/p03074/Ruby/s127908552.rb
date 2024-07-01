N, K = gets.split.map(&:to_i)
S = gets.chomp.chars.take(N)
zero_list = []
zero_start = nil
S.each.with_index do |ch, i|
  if ch == '0'
    zero_start = i unless zero_start
    if i == S.size - 1
      zero_list.push([zero_start, i])
    end
  else
    if zero_start
      zero_list.push([zero_start, i - 1])
      zero_start = nil
    end
  end
end

puts N if zero_list.empty?
ans = 0
(0..(zero_list.size - 1)).each do |i|
  s = nil
  if i == 0
    s = 0
  else
    s = zero_list[i - 1][1] + 1
  end
  e = nil
  if i == zero_list.size - 1
    e = N - 1
  elsif i + K <= zero_list.size - 1
    e = zero_list[i + K][0] - 1
  else
    e = N - 1
  end
  count = (e - s) + 1
  ans = count if count > ans
end
puts ans
