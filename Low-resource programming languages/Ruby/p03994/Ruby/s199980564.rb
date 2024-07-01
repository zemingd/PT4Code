s = gets.chomp #英小文字列
k = gets.to_i

_s = s.each_char.to_a
# "a".ord #=> 97
# 97.chr #=> "b"
_s.map! do |c|
  c.ord - 97
end

_s.map! do |i|
#  break if k == 0
#  next if i == 0
  if k ==0 || i == 0
    i
  elsif k >= (26 - i)
    k -= (26 - i)
#    print 'a'
    0
  else
#    print (i+97).chr
    i
  end
end

#p _s
i = -1
while k>0
  if k > 25 - _s[i]
    _s[i] = 25
    k -= 25 - _s[i]
  else
    _s[i] = _s[i] + k
    k = 0
  end
end
    
puts _s.map { |i| (i+97).chr }.join