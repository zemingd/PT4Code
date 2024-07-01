a = []
gets.strip.chars.each do |c|
  if c == ?B
    a.pop
  else
    a << c
  end
end
puts a*''