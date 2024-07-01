io = STDIN
n=io.gets.to_i
l=io.gets.split.map(&:to_i)
p l.combination(3).select { |a,b,c| a<b+c && b<c+a && c<a+b}.size
