h, w = gets.chomp.split(" ").map(&:to_i)

g = []

h.times do
  g += gets.chomp.split("")
end

cand = []
w.times do |i|
  x = h.times.map{|j| i + j * w}
  if x.map{|j| g[j]}.all?{|c| c == "."}
    cand += x
  end
end

g = (h * w).times.select{|i| !cand.include?(i)}.map{|i| g[i]}

w -= (cand.length / h)

g.each_slice(w) do |row|
  if row.all?{|c| c == "."}
    next
  else
    puts row.join("")
  end
end
