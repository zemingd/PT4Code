N = gets.to_i
D = gets.chomp.split(" ").map(&:to_i)

countD = Array.new(D.max + 1, 0)

D.each{|d|
  countD[d] += 1
}

if D[0] != 0 then
  puts 0
elsif D[1...N].include?(0)
  puts 0
else
  ans = 1
  for i in 1...countD.length do
    ans = ans * (countD[i-1] ** countD[i]) % 998244353
  end
  puts ans
end
