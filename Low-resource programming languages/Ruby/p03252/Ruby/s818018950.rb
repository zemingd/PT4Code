s = gets.chomp.split('').map{ |c| c.ord - 97 }
t = gets.chomp.split('').map{ |c| c.ord - 97 }
graph = 26.times.map{ [false] * 26 }
s.length.times do |i|
    graph[s[i]][t[i]] = true
end
if graph.all?{ |arr| arr.count(true) <= 1 } && graph.transpose.all?{ |arr| arr.count(true) <= 1 }
  puts "Yes"
else
  puts "No"
end