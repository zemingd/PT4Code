cnt = 0

n, m = gets.chomp.split(" ").map{|i|i.to_i}
h = gets.chomp.split(" ").map{|i|i.to_i}
t = [[]]
m.times do
  a, b = gets.chomp.split(" ").map{|j|j.to_i}
  t[a] = [] if not t[a]
  t[b] = [] if not t[b]
  t[a].push(b)
  t[b].push(a)
end
t.each_with_index do |ws, i|
  next if ws == [] || ws == nil
  r = 1
  ws.each do |w|
    if h[w] > h[i-1]
      r = 0
      break
    end
  end
  cnt += r
end

puts cnt