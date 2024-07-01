_ = gets
a = gets.chomp.split.map(&:to_i)
c = [399, 799, 1199, 1599, 1999, 2399, 2799, 3199]
d = Hash.new(0)
rc = 0

a.each do |r|
  rank = c.bsearch {|x| x >= r }
  d[rank] += 1 if !rank.nil?
  rc += 1 if rank.nil?
end

lb = d.size
ub = d.size + rc

lb += 1 if d.size == 0

puts [lb, ub].join(" ")