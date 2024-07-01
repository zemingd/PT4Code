s = gets.sub(/\n/, "")
words = %w(eraser erase dreamer dream)
while s.include?("dream") || s.include?("erase")
  words.each do |w|
    s = s.reverse.sub(/#{w.reverse}/, "").reverse
  end
end
if s.empty?
  puts "YES"
else
  puts "NO"
end
