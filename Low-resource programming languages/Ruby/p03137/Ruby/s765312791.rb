N, M = gets.split.map(&:to_i)
X = gets.split.map(&:to_i).sort

r = []
X.each_cons(2) do |a, b|
  r << b - a
end 

if X.size <= N
  puts 0
else
  puts X.last - X.first - r.sort.reverse.take(N - 1).inject(0, :+)
end