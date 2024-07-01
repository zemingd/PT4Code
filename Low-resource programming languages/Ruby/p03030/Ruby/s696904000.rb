n = gets.to_i
sp = []

n.times do |i|
  sp << gets.split("\s")
end

sp_dup = sp.dup

n.times do |i|
  min = [nil, nil]
  sp.each do |x|
    if !min.first || min.first > x.first
      min = x
    elsif min.first == x.first
      min = x if x.last > min.last
    end
  end
  puts sp_dup.index(sp.delete(min)) + 1
end