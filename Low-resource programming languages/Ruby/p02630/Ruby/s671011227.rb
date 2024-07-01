n = gets.chomp.to_i
a = gets.chomp.split(" ").map { |e|e.to_i  }
aNum = a.uniq
aCount = Array.new(100000,0)
ans = []
bc = []

q = gets.chomp.to_i
q.times do
  bc << gets.chomp.split(" ").map { |e|e.to_i  }
end

aNum.each do |i|
  aCount[i - 1] = a.count(i)
end

sum = 0
sum = a.sum
bc.each do |b, c|

  if aCount[b - 1] != 0
    sum += aCount[b - 1] * (c - b)
    aCount[c - 1] += aCount[b - 1]
    aCount[b - 1] = 0
  else
  end
  ans << sum
end

puts ans
