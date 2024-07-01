def ok?(s, t)
  (t.chars.uniq - s.chars.uniq).empty?
end

s = gets.chomp
t = gets.chomp

if !ok?(s, t)
  p -1
  exit
end

pos = Hash.new{|h,k| h[k]=[]}
s.each_char.with_index do |c, i|
  pos[c] << i
end
l = 0
prev_i = pos[t[0]][0]
t[1..-1].each_char do |c|
  j = pos[c].bsearch{|x| x > prev_i}
  prev_i = j || pos[c][0]
  l += 1 if !j
end

p s.size * l + (prev_i + 1)



