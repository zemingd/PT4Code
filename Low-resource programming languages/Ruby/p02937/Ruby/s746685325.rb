s = gets.chomp.chars
t = gets.chomp.chars

table = {}
s.each.with_index do |ch, i|
  table[ch] = [] unless table[ch]
  table[ch].push(i)
end

i = -1
loop_count = 0
pos = -1
t.each do |ch|
  unless table[ch]
    puts '-1'
    exit 0
  end
  j = table[ch].bsearch { |j| j > i }
  unless j
    j = table[ch][0]
    loop_count += 1
  end
  i = j
  pos = loop_count * s.size + j + 1
end
puts pos
