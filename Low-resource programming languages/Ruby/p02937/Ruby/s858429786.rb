def ok?(s, t)
  hs = Hash.new(0)
  s.chars.map { |c| hs[c] += 1 }
  t.chars.map { |c| return if hs[c] == 0 }
  true
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



