s = gets.strip
divide = ["dream", "dreamer", "erase", "eraser"]
divide.sort!.reverse!
divide.each do |d|
  s.gsub!(/#{d}/, '')
end
puts s.empty? ? "YES" : "NO"