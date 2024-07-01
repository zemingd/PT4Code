n, q = gets.split.map(&:to_i)
s = gets.strip

ac = "#{s}".split('AC')[0..-2].inject([]) do |memo, item|
  memo << ((memo.last || -2) + 2 + item.size)
end

q.times do
  l, r = gets.split.map(&:to_i)
  range = (l-1)..(r-2)
  ans = ac.select {|i| range.include?(i) }.size
  puts ans
end
