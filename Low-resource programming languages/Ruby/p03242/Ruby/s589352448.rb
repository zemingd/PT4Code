a = ""
gets.chomp.chars do |c|
  a += c=='1' ? '9' : '1'
end
puts a