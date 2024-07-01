def hoge(d, n)
  a = ((100**d)*(n==100 ? n+1 : n))
end
d, n = gets.split.map(&:to_i)
p hoge(d, n)