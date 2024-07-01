n,m = gets.split(" ").map(&:to_i)
prefs = []
n.times do
  prefs << gets.split(" ").map(&:to_i)
end

cands = prefs.shift[1..-1]
prefs.each do |p|
  p = p[1..-1]
  cands = cands & p
end


puts cands.count