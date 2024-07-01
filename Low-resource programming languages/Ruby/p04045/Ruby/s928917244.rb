n, k = gets.split.map(&:to_i)
d = gets.chomp.split

nums = %w(0 1 2 3 4 5 6 7 8 9) - d
c = n.to_s.size
c += 1 if nums.max < n.to_s[0]

ans = 10 ** 7
nums.repeated_permutation(c) do |x|
  a = x.join.to_i
  if a >= n
    ans = [ans, a].min
  end
end
puts ans
