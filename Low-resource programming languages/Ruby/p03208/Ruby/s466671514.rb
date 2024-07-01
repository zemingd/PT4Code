io = STDIN
n,k=io.gets.split.map(&:to_i)
ar=n.times.map{io.gets.to_i}.sort
diff=ar.each_cons(k).map do |a|
  a.last-a.first
end
p diff.min
