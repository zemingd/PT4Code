n = gets.to_i
nums = gets.split.map(&:to_i)

evens = []
odds = []

count = 0
nums.each do |num|
  if count.even?
    evens.push(num)
  else
    odds.push(num)
  end
  count += 1
end

evenFreq = evens.each_with_object(Hash.new(0)){ |m,h| h[m] += 1 }.sort_by{ |k,v| v }.reverse
oddFreq =  odds.each_with_object(Hash.new(0)){ |m,h| h[m] += 1 }.sort_by{ |k,v| v }.reverse

if evenFreq == oddFreq
  res = 0
  evenFreq.each do |num|
    res += num[1]
  end
  puts res
  exit 0
end

if evenFreq.size == 1 && oddFreq.size == 1
  puts 0
  exit 0
end

@evenMost = evenFreq[0][0]
@oddMost = oddFreq[0][0]

if @evenMost == @oddMost
  if evenFreq[0][1] < oddFreq[0][1]
    @evenMost = evenFreq[1][0]
  else
    @oddMost = oddFreq[1][0]
  end
end

count = 0
evenFreq.each do
  if evenFreq[count][0] == @evenMost
    evenFreq.delete_at(count)
    break
  end
  count += 1
end

count = 0
oddFreq.each do
  if oddFreq[count][0] == @oddMost
    oddFreq.delete_at(count)
    break
  end
  count += 1
end

res = 0
evenFreq.each do |num|
  res += num[1]
end
oddFreq.each do |num|
  res += num[1]
end

puts res