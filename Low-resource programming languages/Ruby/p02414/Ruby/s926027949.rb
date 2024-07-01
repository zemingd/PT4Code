a, b, c = gets.split.map(&:to_i)
as = []
bs = []
a.times do
  as << gets.split.map(&:to_i)
end
b.times do
  bs << gets.split.map(&:to_i)
end
cs = []
bs = bs.transpose
as.each do |x|
  ans = []
  bs.each do |y|
    t = 0
    b.times do |i|
      t += x[i] * y[i]
    end
    ans << t
  end
  puts ans.join(" ")
end
