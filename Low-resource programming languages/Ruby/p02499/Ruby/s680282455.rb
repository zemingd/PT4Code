chars  = [*'a'..'z']
counts = Hash.new(0)

lowerd_text = $<.read.downcase
lowerd_text.chars.each do |ch|
  counts[ch] += 1
end

chars.each do |ch|
  puts "#{ch} : #{counts[ch]}"
end