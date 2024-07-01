n = gets.to_i

sp = Array.new(n){ Array.new(2) }

for i in 0...n do
  sp[i] = gets.split
  sp[i] << i+1
  sp[i][1] = sp[i][1].to_i
end

sp.sort! do |a,b,c|
  [a[0],b[1]] <=> [b[0], a[1]]
end

for i in 0...n do
  puts sp[i][2]
end