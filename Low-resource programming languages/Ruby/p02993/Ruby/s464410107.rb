str = gets.chomp.split("")
a = nil
result = "Good"
str.each do |s|
  if s == a
    result = "Bad"
  end
  a = s
end

puts result
