s, t = 2.times.map{gets.chomp.split('')}
s = s.sort!
t = t.sort.reverse!
s.each_with_index do |sv, i|
  if t[i] == nil || sv > t[i] 
    puts 'No'
    exit
  elsif sv == t[i] 
    next
  elsif sv < t[i]
    puts 'Yes'
    exit
  end
end
puts 'Yes'