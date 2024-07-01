n = gets.to_i

codes = {}

def to_code(s)
  res = ''
  ('a'..'z').each { |c| res += c + s.count(c).to_s }
  res.to_sym
end

res = 0

n.times do
  s = gets.to_s
  code = to_code(s)
  if codes.has_key?(code)
    res += 1
  else
    codes[code] = true
  end
end

puts res