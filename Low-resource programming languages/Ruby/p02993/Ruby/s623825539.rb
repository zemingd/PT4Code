s = gets.chomp
for i in 0...s.size-1
  if s[i] == s[i+1]
    puts :Bad
  	exit
  end
end
puts :Good