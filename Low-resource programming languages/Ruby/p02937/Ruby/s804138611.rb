s = gets.chomp
t = gets.chomp
def fin; p -1; exit; end
pos = Hash.new { |h, k| h[k] = [] }
s.each_char.with_index { |c, i| pos[c] << i }
l = 0
prev_i = -1
t.each_char do |c|
  j = pos[c].bsearch { |x| x > prev_i } rescue fin
  prev_i = j || pos[c][0]
  l += 1 if !j
end
p s.size * l + (prev_i + 1) rescue fin
