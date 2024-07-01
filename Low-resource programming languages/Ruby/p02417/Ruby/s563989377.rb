count = Hash.new(0)
ARGF.each_char do |c|
    c = c.downcase
    count[c] += 1
end

('a'..'z').each do |s|
  puts "#{s} : #{count[s]}"
end