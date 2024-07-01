N, D = gets.chomp.split.map(&:to_i)
X = []
N.times do
  X << gets.chomp.split.map(&:to_i)
end

r = 0
(0.upto(N-1)).each do |i1|
  (i1 + 1).upto(N-1).each do |i2|
    x1 = X[i1]
    x2 = X[i2]
    dis = x1.zip(x2).map { |a, b| (a - b) ** 2 }.inject(&:+)
    # p [x1, x2]
    # p Math.sqrt(dis)
    # p (Math.sqrt(dis) % 1) == 0
    r += 1 if ((Math.sqrt(dis) % 1) == 0)
  end
end

p r