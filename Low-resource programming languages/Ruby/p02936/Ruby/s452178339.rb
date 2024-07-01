N, Q = gets.split.map(&:to_i)

hash = Hash.new {0}
parents = Hash.new {1}

(N-1).times do
  a, b = gets.split.map(&:to_i)
  parents[b] = a
end

Q.times do
  p, x = gets.split.map(&:to_i)
  hash[p] += x
end

ans = {}
ans[1] = hash[1]

(2..N).to_a.each do |i|
  ans[i] = hash[i] + ans[parents[i]]
  if i == N
    puts ans[i]
  else
    print "#{ans[i]} "
  end
end
