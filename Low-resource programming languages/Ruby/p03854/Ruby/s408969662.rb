s = gets.chomp

tt = %w(dream dreamer erase eraser)
tt.sort!
tt.reverse!
tt.each do |t|
  s.gsub!(/#{t}/, '')
end
puts s.empty? ? 'YES' : 'NO'
