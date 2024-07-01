s=gets.chomp!
a=['SUN','MON','TUE','WED','THU','FRI','SAT']
a.each_with_index do |e,i|
  if e == s
    puts 7-i
  end
end