s = gets.strip
while s != ''
  ans = s.sub!(/(dream|dreamer|erase|eraser)$/, '')
  break if ans.nil?
end
puts s == '' ? "YES" : "NO"