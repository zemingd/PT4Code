loop do
  line = gets.strip
  break if line.empty?
  puts line.split.map(&:to_i).reduce(&:+).to_s.length
end