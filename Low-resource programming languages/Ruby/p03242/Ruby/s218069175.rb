s = gets.chomp
s = s.gsub(/1|9/) do |n|
  n == '1' ? '9' : '1'
end
puts s