s=gets
a=['SUN','MON','TUE','WED','THU','FRI','SAT']
a.each_with_index do |e,i|
  if e == s
    p 7-i
  end
end