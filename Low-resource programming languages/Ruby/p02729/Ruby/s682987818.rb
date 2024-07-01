attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

require 'pp'
N, M = attrs[0].map{|a| a.to_i}
res = 0
res += [*1..N].combination(2).to_a.length if N > 1
res += [*1..M].combination(2).to_a.length if M > 1
puts res