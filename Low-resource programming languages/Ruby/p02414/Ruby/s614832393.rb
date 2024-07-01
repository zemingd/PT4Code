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
as.each do |x, y|
  puts bs.map { |m ,n| m * x + n * y }.join(" ")
end
