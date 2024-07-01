n = gets.to_s.to_i
s = gets.chomp

def left(s, i, c)
  i.times do |j|
    return true if s[j] == c
  end
  false
end

def right(s, i, c)
  i.upto(s.size - 1) do |j|
    return true if s[j] == c
  end
  false
end

ans = 0
n.times do |i|
  cnt = 0
  (?a..?z).to_a.each do |c|
    cnt += 1 if right(s,i,c) && left(s,i,c)
  end
  ans = cnt if ans < cnt
end

puts ans