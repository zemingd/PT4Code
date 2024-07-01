s = STDIN.gets.strip
c = STDIN.gets.to_i

a = 'a'.codepoints.first
z = 'z'.codepoints.first

r = s.codepoints.inject([]) do |r, char|
  d =  char - a - 26
  if (c + d) < 0
    r << char
  else
    c = c + d
    r << a
  end
end

if 0 < c
  ch = r.last
  c.times do
    if ch + 1 == z
      ch = a
    else 
      ch = ch + 1
    end
  end
  r[-1] = ch
end

puts r.map(&:chr).join