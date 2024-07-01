s = gets.chomp
t = gets.chomp

n = 0
pos = 0
t.chars.each do |c|
  while true
    if i = s.index(c, pos)
      pos = i + 1
      break
    end
    unless s.index(c)
      puts(-1)
      exit
    end
    n += 1
    pos = 0
  end
end
p n * s.length + pos
