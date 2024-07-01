n,q = gets.split.map(&:to_i)
s = gets.chomp
infos = q.times.map{ gets.split.map(&:to_i) }
ans = infos.map {|l,r| s[l-1..r-1].scan(/AC/).size}
puts ans