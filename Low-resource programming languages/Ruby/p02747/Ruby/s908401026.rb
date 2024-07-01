s = gets.chomp

if s.length % 2 == 1
  puts 'No'
else
  n = s.length / 2
  flag = true
  s.length.times do |i|
    next if i.odd?

    next if s[i] + s[i+1] == 'hi'
    flag = false

  end

  if flag
    puts 'Yes'
  else
    puts 'No'
  end
end
