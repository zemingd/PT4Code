text = gets(nil).downcase

for s in "a".."z"
  puts "#{s} : #{text.count(s)}"
end

