N = gets.to_i
array = gets.split(' ').map(&:to_i)
array.unshift(0)
boxes = Array.new(N+1, 0)
N.downto(1).each do |i|
  selects = [i]
  nextnum = i
  loop do
    nextnum = nextnum + i
    break if nextnum > N
    selects.push(nextnum)
  end
  count = 0
  selects.each do |s|
    count += boxes[s]
  end
  boxes[i] = 1 if count % 2 != array[i]
end
sum = boxes.inject(:+)
puts sum
res = boxes.map.with_index do |b,i|
  b==1 ? i : nil
end.to_a.compact.join(' ')
puts res unless res.empty?
