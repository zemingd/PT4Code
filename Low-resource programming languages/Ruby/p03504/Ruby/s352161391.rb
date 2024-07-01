N,C=gets.chomp.split(" ").map { |e| e.to_i }
record = Array.new(C+1).map { Array.new(2*(10**5)+2,0)}
b = Array.new(2*(10**5)+2,0)


N.times do |i|
  s,t,c=gets.chomp.split(" ").map { |e| e.to_i }

  for j in 2*s-1..2*t do
    record[c][j] = 1
  end
end


for i in 1..C do
  for j in 0..2*(10**5)+1 do
    b[j] += record[i][j]
  end
end

max = -10**9

for i in 0..2*(10**5)+1 do
  max = max > b[i] ? max : b[i]
end

puts max