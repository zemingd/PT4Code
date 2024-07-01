n, q = gets.split.map(&:to_i)
s = gets.strip

ac = s.split('AC', -1)[0..-2].inject([]) do |memo, item|
  memo << ((memo.last || -2) + 2 + item.size)
end

arr = [0]
memo = 0

n.times.map do |i|
  if ac.first == i
    ac.shift
    memo += 1
  end
  arr << memo
end

q.times do
  l, r = gets.split.map(&:to_i)
  puts arr[r-1] - arr[l-1]
end
