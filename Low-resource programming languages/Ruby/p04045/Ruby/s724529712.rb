N, K = gets.split
D = gets.split.map(&:to_i)

X = ((0..9).to_a - D).map(&:to_s)
ans = []
if D.map(&:to_s).any? { |i| N.split('').include?(i) }
  ans[0] = X[0] == '0' ? X[1] : X[0]

  (N.length - 1).times do
    ans << X[0]
  end

  ans = ans.join('')
else
  ans = N
end
puts ans