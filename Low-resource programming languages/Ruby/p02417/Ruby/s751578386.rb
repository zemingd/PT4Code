h = Hash.new { 0 }
STDIN.read.each_char do |char|
  h[char] += 1 if char =~ /[a-zA-Z]/
end

('a'..'z').each do |char|
  puts "#{char} : #{h[char]}"
end