N = gets.to_i
D = gets.chomp.split(" ").map(&:to_i)

countD = Array.new(D.max + 1, 0)

D.each{|d|
  countD[d] += 1
}

if D[0] != 0 then
  puts 0
elsif countD[0] != 1 then
  puts 0
else
  for i in 1...countD.length do
    ans *= countD[i-1] ** countD[i]
  end
  puts ans % 998244353
end
