s = STDIN.gets.strip
t = STDIN.gets.strip

storable = false

matched = []

(s.size - t.size + 1).times do |offset|
  exact_match = 0
  wildcard_match = 0
  not_match = false
  t.chars.each_with_index do |c, i|
    if (s[offset + i] == c)
      exact_match += 1
    elsif s[offset + i] == '?'
      wildcard_match += 1
    elsif s[offset + i] != '?' && s[offset + i] != c
      not_match = true
      break
    end
  end

  if not_match
    next
  elsif exact_match > 0 || wildcard_match == t.length
    str = s[0..offset - 1] + t[0..-1] + s[offset+t.length..-1]
    storable = true
    matched << str.gsub(/\?/, 'a')
  end
end

if !storable
  puts 'UNRESTORABLE'
else
  puts matched.sort.first
end