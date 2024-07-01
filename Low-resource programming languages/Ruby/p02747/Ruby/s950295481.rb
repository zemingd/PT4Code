s = gets.chomp

if s.size.odd?
  puts 'No'
  exit
end

0.upto(s.size - 1) do |i|
  if (i.even? && s[i] != 'h') || (i.odd? && s[i] != 'i')
    puts 'No'
    exit
  end
end
puts 'Yes'