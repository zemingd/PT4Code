s = gets.chomp
k = gets.to_i

def cplus(c, i)
  ((c.ord - 'a'.ord + i) % 26 + 'a'.ord).chr
end

def toa(c)
  ('a'.ord - c.ord + 26) % 26
end

result = ''

s.chars.each do |c|
  toav = toa(c)
  if toav <= k
    k -= toav
    result += 'a'
  else
    result += c
  end
end

result[-1] = cplus(result[-1], k)

puts result
