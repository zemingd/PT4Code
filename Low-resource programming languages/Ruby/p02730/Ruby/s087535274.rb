s=gets.chomp
n=s.size
(n/2).times do |i|
  if s[i]!=s[n-1-i]
    puts "No"
    exit
  end
end
(n/4).times do |i|
  if s[i]!=s[n/2-1-i]
    puts "No"
    exit
  end
end
(n/4).times do |i|
  if s[i+n/2+1]!=s[n-1-i]
    puts "No"
    exit
  end
end
puts "Yes"

