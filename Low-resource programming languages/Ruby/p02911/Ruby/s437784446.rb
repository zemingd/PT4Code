require 'pp'
n, k, q = gets.split.map(&:to_i)
# p n
# p k
play = Array.new(n+1, k) # [0]は使わない
a = [nil]
q.times do
  a << gets.to_i
end
# pp a[1..-1]
a[1..-1].each do |aa|
  play[aa] += 1
end
# pp play[1..-1]
hoge = []
play[1..-1].each_with_index do |aa, i|
  hoge << (aa >= q+1)
end
puts hoge.map{|h|h ? 'Yes' : 'No'}.join("\n")
