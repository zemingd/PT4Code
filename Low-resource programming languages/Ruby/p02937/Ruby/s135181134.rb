s = gets.chomp
t = gets.chomp

table = Array.new(s.length){{}}
last = {}
last.default = 0
first = {}
size = s.size
ss = s + s
1.upto(ss.size).each do |i|
  last[ss[i]].upto([i-1, size-1].min).each do |j|
    table[j][ss[i]] ||= i - j
  end
  last[ss[i]] = i
  first[ss[i]] ||= i
end
exit
unless first.has_key? t[0]
  puts -1
  exit
end
ans = first[t[0]]
(t.size-1).times do |i|
  unless first.has_key? t[i+1]
    puts -1
    exit
  end
  ans += table[ans%size][t[i+1]]
end

puts ans + 1