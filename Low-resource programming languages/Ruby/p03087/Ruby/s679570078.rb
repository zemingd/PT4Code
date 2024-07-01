n,q = gets.split.map &:to_i
s = gets.chomp
l = []
r = []

indexes = []

i = 0
while index = s.index("AC", i)
  indexes << index
  i = index + 1
end
reversed = indexes.reverse
size = indexes.size
q.times do |i|
  li,ri = gets.split.map{|s|s.to_i - 1}
  l = indexes.bsearch_index{|x|x >= li}
  r = size - reversed.bsearch_index{|x|x < ri} - 1
  if l && r
    puts [r-l+1, 0].max
  else
    puts 0
  end
end

