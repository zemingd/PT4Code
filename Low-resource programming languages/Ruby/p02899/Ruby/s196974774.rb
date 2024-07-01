io = STDIN
n=io.gets.to_i
ar=io.gets.split.map(&:to_i)
puts (1..n).zip(ar).sort_by{|no,sum|sum}.map{|no,sum|no}.join(" ")
