N = gets.chomp.to_i
An = gets.chomp.split(" ").map(&:to_i)

an = Array.new(N)
for i in 1..N do
  an[i - 1] = An[i - 1] - i
end

dif = an.min
minSum = an.reduce(0){|r,i| r+=i.abs}

loop do
  sum = an.map{|e| e - dif}.reduce(0){|r,i| r+=i.abs}
  break if minSum < sum
  minSum = sum
  dif += 1
end

p minSum