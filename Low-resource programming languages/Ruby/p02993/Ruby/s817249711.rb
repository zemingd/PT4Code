s = gets
m = ""
s.each_char do |c|
  if c == m 
    puts("Bad")
    exit
  end
  m = c
end
puts("Good")