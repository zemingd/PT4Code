n = gets.to_i
s = gets.chomp
if n % 2 == 1
  puts 'No'
else
  a = s.slice(0, s.size/2)
  b = s.slice(s.size/2, s.size)
  if a.nil? || b.nil?
    puts 'No'
  else
    puts a == b ? 'Yes' : 'No'
  end
end

