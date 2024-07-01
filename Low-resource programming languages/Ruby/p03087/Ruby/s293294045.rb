n, q = ARGF.gets.split.map(&:to_i)
str  = ARGF.gets.chomp
q.times do
  l, r = ARGF.gets.split.map(&:to_i)
  substr = str.slice((l-1)..(r-1))
  puts substr.scan(/AC/).size
end
