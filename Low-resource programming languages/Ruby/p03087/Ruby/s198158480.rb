n,q = gets.split.map(&:to_i)
s = gets.chomp
infos = q.times.map{ gets.split.map(&:to_i) }
infos.each do |l,r|
  puts s[l-1..r-1].scan(/AC/).size
end