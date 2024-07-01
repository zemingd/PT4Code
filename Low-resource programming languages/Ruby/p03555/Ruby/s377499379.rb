s=gets.chomp
t=gets.chomp
3.times do |i|
  if s[i]!=t[2-i]
    puts "NO"
    exit
  end
end
puts "YES"