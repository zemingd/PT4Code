N,C=gets.chomp.split(" ").map { |e| e.to_i }
record = []
b = Array.new(10**5+1,0)

N.times do |i|
  s,t,c=gets.chomp.split(" ").map { |e| e.to_i }
  record[i] = {"s"=>s-1,"t"=>t,"c"=>c}
end

  for x in record do
    for indx in x["s"]..x["t"] do
      b[indx] += 1
    end
  end

max = -10**9

for i in 0..10**5 do
  max = max > b[i] ? max : b[i]
end

puts max