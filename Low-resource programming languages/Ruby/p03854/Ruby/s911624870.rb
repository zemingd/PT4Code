@words = %w[dreamer dream eraser erase]

def detect(s, idx)
  @words.each do |w|
    return w.size if idx >= w.size && s[idx - w.size, w.size] == w
  end
  nil
end

s = gets.chomp
idx = s.size
while 0 < idx
  nxt = detect(s, idx)
  break if nxt.nil?
  idx -= nxt
end

puts idx == 0 ? "YES" : "NO"