s = gets.chomp
t = gets.chomp

head = Array.new(26)
tail = Array.new(26)

ans = "Yes"
s.length.times do |i|
  a = s[i].ord - "a".ord
  b = t[i].ord - "a".ord

  if head[a] || tail[b]
    if head[a] != b || tail[b] != a
      ans = "No"
    end
  end
  head[a] = b
  tail[b] = a
end

puts ans