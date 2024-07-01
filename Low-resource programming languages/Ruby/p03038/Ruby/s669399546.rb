n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i).sort
bc =[]

0.step(m - 1) do |i|
  k = gets.chomp.split.map(&:to_i)
  bc.push({b: k[0], c:k[1]})
end

bc = bc.sort_by {|h| -1 * h[:c]}

bc.each do |h|
  index = a.bsearch_index {|aa| aa >= h[:c]} || n
  break if index == 0
  innum = index < h[:b] ? index : h[:b]
  a = a.insert(index, *Array.new(innum){ h[:c] })[innum, n - 1 + innum]
end

p a.inject(:+)