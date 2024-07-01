count = Hash.new
ARGF.each do |line|
  line.each_char do |c|
    c = c.downcase
    count[c] = 0 unless count[c]
    count[c] += 1
  end
end
('a'..'z').each do |s|
  if count[s]
    puts "#{s}:#{count[s]}"
  else
    puts "#{s}:0"
  end
end