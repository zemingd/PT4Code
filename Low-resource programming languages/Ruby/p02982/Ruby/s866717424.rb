N, D = gets.chomp.split(" ").map(&:to_i)
X = []
N.times do |i|
  X << gets.chomp.split(" ").map(&:to_i)
end

cnt = 0
0.upto(N-2) do |i|
  (i+1).upto(N-1) do |j|
    d2 = X[i].zip(X[j]).map { |y, z| (y - z)**2 }.inject(:+)
    d = Math.sqrt(d2)
    cnt += 1 if d == d.to_i
  end
end
puts cnt
