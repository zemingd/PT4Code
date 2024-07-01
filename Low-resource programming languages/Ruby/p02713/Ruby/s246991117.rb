k = gets.to_i

@memo = Array.new(201).map{Array.new(201, 0)}
def gcdmemo(i, j)
  return @memo[i][j] if @memo[i][j] > 0
  u, v = i, j
  while (j > 0) do
    r =  i % j
    i = j
    j = r
  end
  @memo[u][v] = i
end
1.upto(200) do |i|
  1.upto(200) do |j|
    gcdmemo(i, j)
  end
end
ans = 0
1.upto(k) do |i|
  1.upto(k) do |j|
    c = @memo[i][j]
    1.upto(k) do |l|
      ans += @memo[c][l]
    end
  end
end
puts ans