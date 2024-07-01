x,n = gets.split.map(&:to_i)
return puts x if n == 0 || n == 100
p = gets.split.map(&:to_i)
return puts x unless p.include? x
a = [*1..100].map {|n| n unless p.include? n }.compact!
puts a.min_by(2){|n| (n-x).abs}.min