t=s=gets.chomp
ws=['dream','dreamer','erase','eraser']
l=s.length
loop do
  wl = w.length
  w = ws.detect { |w| l>=wl && s.slice(l-wl,wl) == w }
  break if w.nil?
  l-=w.length
end
puts l == 0 ? 'YES' : 'NO'
