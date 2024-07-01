result = []
loop do
  a,b,c = gets.split().map(&:to_i)
  break if a == -1 && b == -1 && c == -1
  if a == -1 || b == -1
    result << "F"
  elsif a + b >= 80
    result << "A"
  elsif a + b >= 65
    result << "B"
  elsif a + b >= 50
    result << "C"
  elsif a + b >= 30
    if c >= 50
      result << "C"
    else
      result << "D"
    end
  else
    result << "F"
  end
end
  
puts result
