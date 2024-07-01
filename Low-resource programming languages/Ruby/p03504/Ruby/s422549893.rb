N,C=gets.chomp.split(" ").map { |e| e.to_i }
record = []
b = Array.new((10**5)*2+2,0)

N.times do |i|
  s,t,c=gets.chomp.split(" ").map { |e| e.to_i }
  record[i] = {"s"=>s,"t"=>t,"c"=>c}
end



for x in record do
  for indx in 2*x["s"]-1..2*x["t"] do
      b[indx] += 1
  end
end

max = -10**9

for i in 0..2*(10**5) do
  max = max > b[i] ? max : b[i]
end

puts max