a = []
while true
  b = STDIN.gets.split.map { |i| i.to_i }
  break if b[0] == 0 && b[1] == 0
  a.push b.sort
end
a.each do |b| puts "#{b[0]} #{b[1]}" end