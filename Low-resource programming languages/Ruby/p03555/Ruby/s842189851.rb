s = []
2.times do
  s << gets.chomp
end

3.times do |i|
  if s[0][i] != s[1][2-i]
    puts 'NO'
    exit
  end
end

puts 'YES'