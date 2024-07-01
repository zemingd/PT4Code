s = gets.strip
weeks = ['SUN','MON','TUE','WED','THU','FRI','SAT']

weeks.each_with_index do |day, i|
  if day == s
    puts (7-i)
    exit 0
  end
end