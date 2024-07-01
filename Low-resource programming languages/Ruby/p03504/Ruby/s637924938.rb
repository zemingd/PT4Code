N,C=gets.chomp.split(" ").map { |e| e.to_i }
record = []
a = Array.new(C+1).map { Array.new(2*(10)**5+2,0)}
b = Array.new(2*(10**5)+2,0)


N.times do |i|
  s,t,c=gets.chomp.split(" ").map { |e| e.to_i }
  record[i] = {"s"=>s,"t"=>t,"c"=>c}
end



for i in 1..C do
  same_c = record.select{ |h| h["c"] == i}
  for x in same_c do
    for indx in 2*x["s"]-1..2*x["t"] do
        a[x["c"]][indx] = 1
    end
  end
  for j in 0..2*(10**5)+1 do
    b[j] += a[i][j]
  end
end

max = -10**9

for i in 0..2*(10**5)+1 do
  max = max > b[i] ? max : b[i]
end

puts max