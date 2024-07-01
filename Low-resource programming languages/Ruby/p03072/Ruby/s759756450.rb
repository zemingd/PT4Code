n = gets.to_i
hs = gets.split.map {|x| x.to_i }

max_h = 0
can_views = 0

hs.each do |h|
  if h >= max_h
    can_views += 1
    max_h = h
  end
end

puts can_views
