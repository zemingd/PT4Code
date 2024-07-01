N, M, L = gets.split.map(&:to_i)
a = []
b = []
ans = Array.new(N).map{Array.new(L,0)}
N.times do
  a.push(gets.split.map(&:to_i))
end
M.times do
  b.push(gets.split.map(&:to_i))
end
N.times do |n|
  L.times do |l|
    sum = 0
    M.times do |m|
      sum += a[n][m] * b[m][l]
    end
    ans[n][l] = sum
  end
end
puts ans.map{|r|r*' '}
