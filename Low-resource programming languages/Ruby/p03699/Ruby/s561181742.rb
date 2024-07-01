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
def powerset arr
  a = [[]] 
  for i in 0...arr.size do
    len = a.size; j = 0;
    while j < len
      a << (a[j] + [arr[i]])
      j+=1
    end
  end 
  a 
end
def sum_min(s, n)
  sum = sum(s)
  return sum if sum % 10 != 0
  i = 1
  a = powerset((0...n).to_a)
  a.each do |c|
    # puts "c:#{c}, sum:#{sum}, sum_i(s, c):#{sum_i(s, c)}"
    if (sum - sum_i(s, c)) % 10 != 0
      return sum - sum_i(s, c)
    end
  end
  return 0
end
puts sum_min(s, n)

