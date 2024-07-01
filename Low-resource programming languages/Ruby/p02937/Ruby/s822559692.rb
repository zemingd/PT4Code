s = gets.chomp
t = gets.chomp
def theend; puts -1; exit; end
pos = Hash.new{|h,k| h[k]=[]}
s.each_char.with_index do |c, i|
  pos[c] << i
end
l = 0
prev_i = pos[t[0]][0] rescue theend
t[1..-1].each_char do |c|
  j = pos[c].bsearch {|x| x > prev_i} rescue theend
  prev_i = j || pos[c][0]
  l += 1 if !j
end

p s.size * l + (prev_i + 1) rescue theend