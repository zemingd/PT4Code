def canbea?(ch, cnt)
  ch.ord + cnt > 'z'.ord
end
def diffa(ch)
  'z'.ord - ch.ord + 1
end

s = gets.chomp
cnt = gets.chomp.to_i

s.split('').each_with_index do |item, index|
  if canbea?(item, cnt)
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
    s[index] = (s[index].ord + cnt).chr
    break
  end
end

puts s
