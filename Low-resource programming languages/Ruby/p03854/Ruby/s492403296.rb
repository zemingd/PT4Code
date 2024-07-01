t = gets.chomp

def remove_if_matched_suffix(s, suffix)
  if s.end_with?(suffix)
    s.delete_suffix!(suffix)
  end
end

while t.length > 0
  next if remove_if_matched_suffix(t, 'dream')
  next if remove_if_matched_suffix(t, 'dreamer')
  next if remove_if_matched_suffix(t, 'erase')
  next if remove_if_matched_suffix(t, 'eraser')
  break
end

if t.length == 0
  puts 'YES'
else
  puts 'NO'
end
