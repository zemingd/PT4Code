require "set"
n, cn = gets.split.map(&:to_i)

max_t = 10**5
programs =  Array.new(cn){ Array.new(max_t+2, false) }

channel = Set[]
n.times do
  s, t, c = gets.split.map(&:to_i)
  c -= 1
  channel << c
  (s..t).each { |i| programs[c][i] = true }
end

cn = channel.size
del_chan = (Array.new(12){|i| i } - channel.to_a).sort.reverse
# p del_chan
del_chan.each{|i| programs.delete_at(i) }
# p programs.size
# p cn

ans = 0
(1..max_t).each do |i|
  tmp = 0
  cn.times{ |j| tmp += 1 if programs[j][i] }
  ans = tmp if ans < tmp
end
 
puts ans
