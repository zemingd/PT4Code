s = gets.chomp


a = ["dream", "dreamer", "erase", "eraser"]

a.each do |i|
  s.gsub!(/#{i}/,'')
end

puts s.empty? ? "YES": "NO"