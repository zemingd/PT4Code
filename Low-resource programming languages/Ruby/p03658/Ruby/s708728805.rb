io = STDIN
n,k=io.gets.split.map(&:to_i)
l=io.gets.split.map(&:to_i)
 p l.sort_by{|x|-x}.take(k).inject(:+)
