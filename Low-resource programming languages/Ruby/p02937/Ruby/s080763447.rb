s = gets
t = gets

hash = {}

s.chars.each_with_index do |c, i|
  hash[c] ||= []
  hash[c] << i
end

hash.each do |key, value|
  hash[key] = value + value.map { |v| v + s.length - 1 }
end

ans = 0
p = 0

t.chars.each_with_index do |c, n|
  unless hash[c]
    ans = -1
    break
  end

  p = hash[c].bsearch { |v| v >= p }

  if p >= n
    p -= n
    ans += n
  end
end

if ans == -1
  puts "-1"
else
  ans += p
  puts ans
end