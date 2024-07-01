text = gets.chomp.downcase

for s in "a".."z"
  puts "#{s} : #{text.count(s)}"
end