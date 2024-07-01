s = gets.chomp

delete_count = 0

while true do
  s = s.gsub(/01/, "F")
  break if !s.include?("F")
  delete_count += s.count("F")
  s = s.delete("F")
end

while true do
  s = s.gsub(/10/, "F")
  break if !s.include?("F")
  delete_count += s.count("F")
  s = s.delete("F")
end

puts delete_count * 2