_n = gets.strip.to_i
s = gets.strip

ct = 0
is_count = false
s.split('').each do |c|
  if is_count
    ct += 1 if c == '.'
  else
    is_count = true if c == '#'
  end
end
puts ct
