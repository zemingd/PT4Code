n = gets.to_i
as = gets.split.map(&:to_i)
counts = []
as.uniq.each do |au|
  cnt = as.count(au) + as.count(au+1) + as.count(au-1)
  counts << cnt
end
puts counts.max