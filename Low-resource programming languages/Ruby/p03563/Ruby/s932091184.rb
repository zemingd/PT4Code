s = STDIN.gets.strip
t = STDIN.gets.strip

storable = false

(s.size - t.size + 1).times do |offset|
  exact_match = 0
  wildcard_match = 0
  not_match = false
  t.chars.each_with_index do |c, i|
    if (s[offset + i] == c)
      exact_match += 1
    elsif s[offset + 1] != '?' && s[offset + 1] != c
      not_match = true
      break
    end
  end

  if not_match
    next
  elsif exact_match > 0
    str = s[0..offset] + t[offset..-1] + s[offset+t.length..-1]
    storable = true
    puts str.gsub(/\?/, 'a')
  end
end

if !storable
  puts 'UNRESTORABLE'
end