h,w=gets.chomp.split(" ").map(&:to_i);
g = []
h.times do |i|
  g[i]=gets.chomp.split("")
end
g.each_index do |i|
  el = true
  g[i].each do |j|
    if j != "." then
      el = false
    end
  end
  if el then
    g.delete_at(i)
  end
end

g[0].length.times do |j|
  el = true
  g.each_index do |i|
    if g[i][j] != "." then
      el = false
    end
  end
  if el then
    g.each_index do |i|
      g[i][j] = nil
    end
  end
end
g.each_index do |i|
  g[i].compact!
end

g.each do |i|
  puts i.join
end
