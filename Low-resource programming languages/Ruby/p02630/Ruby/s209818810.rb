n = gets.chomp.to_i
a = gets.chomp.split(" ").map { |e|e.to_i  }
aNum = a.uniq
aCount = []
ans = []

aNum.each do |i|
  aCount << a.count(i)
end


sum = 0
for i in 0..aNum.count - 1 do
  sum += aNum[i] * aCount[i]
end

q = gets.chomp.to_i
q.times do
  b, c = gets.chomp.split(" ").map { |e|e.to_i  }
  if aNum.include?(b)
    sum += aCount[aNum.index(b)] * (c - b)
    if aNum.include?(c) == true
      aCount[aNum.index(c)] += aCount[aNum.index(b)]
      aCount.delete_at(aNum.index(b))
      aNum.delete(b)
    else
      aNum[aNum.index(b)] = c
    end
  end
  ans << sum
end

puts ans
