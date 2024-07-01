X, N = gets.split.map(&:to_i)
result = []
if N == 0
  print X
else
  n_ary = gets.split.map(&:to_i)
  ary = []
  (1..100).each do |i|
    ary.push i
  end
  n_ary.each do |j|
    ary.delete(j)
  end
  result.push ary.min_by{|x| (x-X).abs}
  puts result.min
end