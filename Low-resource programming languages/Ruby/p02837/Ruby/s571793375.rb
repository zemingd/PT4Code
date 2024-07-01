N = gets.to_i
A = Array.new(20)
x = Array.new(20).map {Array.new(20)}
y = Array.new(20).map {Array.new(20)}

1.upto(N) do |i|
  A[i] = gets.to_i
  1.upto(A[i]) do |j|
    x[i][j], y[i][j] = gets.strip.split.map(&:to_i)
  end
end

ans = 0

[0, 1].repeated_permutation(N) do |persons|
  not_exist = false
  persons.each.with_index(1) do |witness ,i|
    break if not_exist == true
    next if witness == 0
    1.upto(A[i]) do |j|
       match = y[i][j] == persons[x[i][j]-1]
       break not_exist = true if !match
    end
  end
  next if not_exist == true
  ans = [ans, persons.count(1)].max
end

print ans.to_i