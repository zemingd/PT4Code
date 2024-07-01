n, q = gets.split.map(&:to_i)
s = gets.chomp
lr = q.times.map { gets.split.map(&:to_i) }
puts lr.map{ |m| s[m[0]-1..m[1]-1].scan("AC").length }
