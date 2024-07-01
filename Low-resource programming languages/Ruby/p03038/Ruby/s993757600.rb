n,m = gets.chomp.split.map &:to_i
a = gets.chomp.split.map &:to_i
a.sort!
bc = []
m.times do
  b,c = gets.chomp.split.map(&:to_i)
  bc << { :b => b, :c => c }
end
bc.sort_by!{|a| a[:c] }.reverse!

bc_0n = []
size = 0
bc.each do |hash|
  hash[:b].times { bc_0n << hash[:c] }
  size += hash[:b]
  break if size >= n
end

a.each_with_index do |v, i|
  break if bc_0n.size.zero?
  new = bc_0n.shift
  break if v >= new
  a[i] = new
end

puts a.sum
