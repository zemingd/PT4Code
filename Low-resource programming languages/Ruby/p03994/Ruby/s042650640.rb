def diffa(ch)
  'z'.ord - ch.ord + 1
end
def diffz(ch)
  'z'.ord - ch.ord
end

s = gets.chomp
cnt = gets.chomp.to_i

s.split('').each_with_index do |item, index|
  if diffa(item) <= cnt
    cnt -= diffa(item)
    s[index] = 'a'
  end
end

s.split('').each_with_index.reverse_each do |item, index|
  if diffa(item) <= cnt
    cnt -= diffa(item)
    s[index] = 'a'
  end
  if cnt >= 0
    d = [diffz(s[index]), cnt].min
    cnt -= d
    s[index] = (s[index].ord + d).chr
    next
  end
end

puts s
