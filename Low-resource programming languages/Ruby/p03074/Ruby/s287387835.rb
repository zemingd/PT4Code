N, K = gets.split.map(&:to_i)
S = gets.chomp.chars
zero_c = 0
one_c = 0
group = Array.new
(S + (S[-1] == '0' ? ['1'] : ['0'])).each.with_index do |ch, i|
  if ch == '0'
    zero_c += 1
    if one_c > 0
      group.push([:one, one_c])
      one_c = 0
    end
  else # ch == '1'
    one_c += 1
    if zero_c > 0
      group.push([:zero, zero_c])
      zero_c = 0
    end
  end
end
zero_c = group.count { |(t, _)| t == :zero }
if zero_c <= K
  puts S.size
  exit 0
end

sum_list = Array.new
group.unshift([:one, 0]) if group[0][0] == :zero
group.push([:one, 0]) if group[-1][0] == :zero
sum = group[0][1]
1.step(by: 2, to: group.size - 2) do |i|
  _, zero_c = group[i]
  _, one_c = group[i + 1]
  sum += zero_c + one_c
  sum_list.push([sum, one_c])
end

ans = 0
(0..(sum_list.size - K)).each do |i|
  sum1, one_c = i == 0 ? [0, 0] : sum_list[i - 1]
  sum2, _ = sum_list[i + K - 1]
  n = sum2 - sum1 + one_c
  ans = n if n > ans
end
puts ans
