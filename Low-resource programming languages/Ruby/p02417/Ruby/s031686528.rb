h = gets(nil).chars.map(&:downcase).inject({}) { |h, c| h[c] ||= 0; h[c] += 1; h }
('a'..'z').each do |c|
  puts [c, h[c] || 0].join(": ")
end