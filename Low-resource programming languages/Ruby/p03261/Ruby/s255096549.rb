s = []
gets.to_i.times do |i|
  s[i] = gets.chomp
  if i != 0 && s[i - 1][-1] != s[i][0]
    puts 'No'
    exit
  end
end

if s.length == s.uniq.length
  puts 'Yes'
else
  puts 'No'
end