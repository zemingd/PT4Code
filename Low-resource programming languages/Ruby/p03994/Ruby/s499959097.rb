CHARS_LEN = 26
s = gets.strip.split('').map{ |c| c.ord - 'a'.ord }
k = gets.to_i

s.each.with_index do |c, i|
  next if s[i] == 0

  if s[i] + k >= CHARS_LEN
    d = CHARS_LEN - s[i]
    s[i] = 0
    k -= d
  end
end

s[s.size - 1] = (s[s.size - 1] + k) % CHARS_LEN

puts s.map{|c| (c + 'a'.ord).chr }.join('')
