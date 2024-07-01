N = gets.to_i
V = gets.chomp.split(" ").map(&:to_i)

ev = Hash.new{|h, k| h[k] = 0}
od = Hash.new{|h, k| h[k] = 0}
0.step(N-1, 2){|i|
  ev[V[i]] += 1
  od[V[i+1]] += 1
}
eva = ev.sort_by{|k, v| -v}
oda = od.sort_by{|k, v| -v}

if eva[0][0] == oda[0][0] then
  if ev.size == 1 && od.size == 1 then
    puts oda[0][1]
  elsif ev.size == 1 then
    puts N/2 - oda[1][1]
  elsif od.size == 1 then
    puts N/2 - eva[1][1]
  else
    puts [N - eva[0][1] - oda[1][1], N - eva[1][1] - od[0][1]].min
  end
else
  puts N - eva[0][1] - oda[0][1]
end
