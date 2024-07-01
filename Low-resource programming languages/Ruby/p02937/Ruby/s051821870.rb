A = ?a.ord
ALPHABET_NUM=26

s = gets.chomp
l = s.size
next_pos = Array.new(l){Array.new(ALPHABET_NUM)}
ss = s + s
ss.bytes.each_with_index{|b, i|
  n = b - A
  upper = [i - 1, l - 1].min
  upper.downto(0){|j|
    break if next_pos[j][n]
    next_pos[j][n] = i
  }
}

ans = 1
pos = 0
t = gets.chomp
t = t[1 .. -1] if t[0] == s[0]
t.bytes{|b|
  n = b - A
  np = next_pos[pos][n]
  unless np
    puts -1
    exit
  end
  ans += np - pos
  pos = np % l
}

puts ans