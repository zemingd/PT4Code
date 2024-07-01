s = gets.chomp
t = gets.chomp

n = 1
len = 1
pos = 0
t.chars.each do |c|
  while true
    if i = s.index(c, pos)
      len += i - pos
      pos = i
      break
    end
    unless s.index(c)
      puts -1
      exit
    end
    n += 1
    len += s.length - pos
    pos = 0
  end
end
p len
