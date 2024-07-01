N = gets.to_i
A = []
N.times do
  a = gets.to_i
  A << a.times.map do
    x,y = gets.split
    [x.to_i,y]
  end
end

X = 2**(N-1)
ans = 0
0.upto(X) do |n|
  n = n.to_s(2).chars
  n.each.with_index(0) do |x,i|
    next if x == "0"
    ans = [ans,n.count("1")].max if A[i].all?{|x,y| n[x-1] == y}
  end
end

puts ans