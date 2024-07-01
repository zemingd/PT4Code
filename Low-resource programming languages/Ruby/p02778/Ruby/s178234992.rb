s = gets.strip.split("")
str = s.join
s.each do |i|
  str.gsub!("#{i}", "x")
end
puts str