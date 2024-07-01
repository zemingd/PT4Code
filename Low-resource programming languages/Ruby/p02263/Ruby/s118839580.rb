x = []
gets.chomp.split.each do |s|
  case s
  when "+"
    a = x.pop + x.pop
    x << a
  when "-"
    a =  - x.pop + x.pop
    x << a
  when "*"
    a = x.pop * x.pop
    x << a
  else
    x << s.to_i
  end
end
puts x.first
