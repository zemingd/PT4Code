io = STDIN
n=io.gets.to_i
an=io.gets.split.map(&:to_i)
ar=Array.new(n+1){0}
an.each {|i|ar[i]+=1}
(1..n).each {|i|puts ar[i]}
