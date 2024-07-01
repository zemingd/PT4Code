N, S = gets.split.map(&:to_i).tap{|it| it[1] /= 1000}
ans = (0 .. N).inject([-1,-1,-1]) do |notfound, y|
  f = S - 5 * y
  break notfound if f < 0
  
  r,m = (S - 5 * y).divmod(10)
  x = (0 .. r).find{|x| x + y + (r - x) * 10 + m == N }
  
  break [x, y, N - x - y] if x
    
  notfound
end
puts ans.join(' ')