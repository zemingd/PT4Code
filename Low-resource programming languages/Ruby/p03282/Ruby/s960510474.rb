s=gets.chomp
k=gets.to_i
(k-1).times do |i|
  if s[i] != ?1
    puts s[i]
    exit
  end
end
puts s[k-1]
