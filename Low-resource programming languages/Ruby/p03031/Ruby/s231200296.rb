def solve(n, m, s, p)
  res = 0
  [ 0, 1 ].repeated_permutation(n) do |perm|
    m.times do |i|
      cnt = s[i].inject(0) { |acc, val| acc += perm[ val - 1] }
      break res -= 1 if cnt % 2 != p[i]
    end
    res += 1
  end
  return res
end

n, m = gets.chomp.split.map(&:to_i)

s = m.times.with_object([]) do |i, o|
  o << gets.chomp.split.map(&:to_i)
  o[i].shift
end

p = gets.chomp.split.map(&:to_i)

puts solve(n, m, s, p)