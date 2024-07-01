N = gets.to_i
V = gets.chomp.split(" ").map(&:to_i)

ev = Hash.new{|h, k| h[k] = 0}
od = Hash.new{|h, k| h[k] = 0}
0.step(N-1, 2){|i|
  ev[V[i]] += 1
  od[V[i+1]] += 1
}
ev.sort_by{|k, v| -v}
od.sort_by{|k, v| -v}

if ev.keys[0] == od.keys[0] then
  if ev.size == 1 && od.size == 1 then
    puts od.values[0]
  elsif ev.size == 1 then
    puts N/2 - od.values[1]
  elsif od.size == 1 then
    puts N/2 - ev.values[1]
  else
    puts [N - ev.values[0] - od.values[1], N - ev.values[1] - od.values[0]].min
  end
else
  puts N - ev.values[0] - od.values[0]
end
