N = gets.to_i
A = []
N.times do
  a = gets.to_i
  A << a.times.map do
    x,y = gets.split
    [x.to_i,y]
  end
end

X = 2**N - 1
ans = 0
0.upto(X) do |n|
  ns = ("%0#{N}b" % n).chars
  ans = [ans,ns.count("1")].max if ns.each.with_index(0).all? do |x,i|
    x == "0" || A[i].all?{|x,y| ns[x-1] == y}
  end
end

puts ans