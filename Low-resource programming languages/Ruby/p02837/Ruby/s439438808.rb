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

[0, 1].repeated_permutation(N) do |bits|
  not_exist = false
  bits.each.with_index(1) do |witness ,i|
    break if not_exist == true
    1.upto(A[i]) do |j|
       match = y[i][j] == bits[x[i][j]-1]
       break not_exist = true if (match && witness == 0) || (!match && witness == 1)
    end
  end
  ans = [ans, bits.count(1)].max if not_exist != true
end

print ans.to_i