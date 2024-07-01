n, m = gets.chomp.split(' ').map(&:to_i)
xs = gets.chomp.split(' ').map(&:to_i).sort
diffs = xs.each_cons(2).map.with_index{|a, i| {i: i + 1, d: (a[1] - a[0]).abs} }.sort{|a, b| b[:d] - a[:d] }
splitter = diffs.take(n - 1).map{|h| h[:i]}.sort
splitted = ([0] + splitter + [xs.length]).each_cons(2).map{|x| xs[x[0]..(x[1]-1)] }
puts splitted.map{|a| a.last - a.first}.reduce(:+)
