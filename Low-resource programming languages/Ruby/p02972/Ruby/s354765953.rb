N = gets.to_i
a_list = gets.split.map(&:to_i)

ans = Array.new(N + 1) { 0 }
mid = N / 2 + (N % 2 == 0 ? 0 : 1)
N.downto(1) do |i|
  if i >= mid
    if a_list[i] == 1
      puts -1
      exit 0
    end
    next
  end
  if i + i >= mid
    a = a_list[i - 1]
    ans[i + 1] = a
    next
  end

  sum = 0
  ii = i + i
  while ii <= N
    sum += ans[ii]
    ii = ii + i
  end
  ans[i + 1] = a_list[i] - sum % 2
end
puts ans.count { |n| n == 1 }
ids = ans[1..N].map.with_index { |a, i| [a, i] }.select do |a, i|
  a == 1
end.map { |_, i| i }
puts ids.join(' ')
