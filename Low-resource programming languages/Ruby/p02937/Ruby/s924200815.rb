s=gets.chomp*2
t=gets.chomp
center = s.length/2

ret = 0
pos = 0
t.each_char do |c|
  idx = s.index(c, pos+1)
  if idx.nil?
    p -1
    exit 0
  end

  ret += idx - pos
  pos = idx % center
end

p ret + 1


