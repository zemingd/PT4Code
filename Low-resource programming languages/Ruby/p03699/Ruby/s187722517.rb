#!/usr/bin/env ruby
n = STDIN.readline.strip.to_i
s = []
n.times do
  s << STDIN.readline.strip.to_i
end
s = s.sort
def sum(a)
  a.inject(0){|n, i| n += i}
end
def sum_i(a, c)
  sum(c.map{|i| a[i]})
end
def sum_min(s, n)
  sum = sum(s)
  return sum if sum % 10 != 0
  i = 1
  while i < s.length
    a = (0...n).to_a.combination(i)
    a.each do |c|
      if (sum - sum_i(s, c)) % 10 != 0
        # puts "c:#{c}, sum:#{sum}, sum_i(s, c):#{sum_i(s, c)}"
        return sum - sum_i(s, c)
      end
    end
    i += 1
  end
  return 0
end
puts sum_min(s, n)

