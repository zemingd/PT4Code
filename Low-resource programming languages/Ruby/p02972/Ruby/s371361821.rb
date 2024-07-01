N = gets.to_i
A = gets.split.map(&:to_i)
ans = Array.new(N, 0)

N.downto(1) do |n|
  t = n

  while t <= N do
    ans[n - 1] += A[t - 1]
    t += n
  end

  ans[n - 1] %= 2
end

res =
  ans.map
    .with_index(1) { |n, i| [n, i] }
    .select { |arr| !arr[0].zero? }
    .map { |arr| arr[1] }

if res.size.zero?
  puts 0
  puts 0
else
  puts res.size
  puts res.join(' ')
end