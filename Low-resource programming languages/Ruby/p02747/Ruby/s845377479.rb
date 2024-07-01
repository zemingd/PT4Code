s = gets.chomp.chars
flag = true
s.each_with_index do |c,i|
  if i.even?
    flag = false if c != "h"
  else
    flag = false if c != "i"
  end
end
flag = false if s.size.odd?
puts flag ? "Yes" : "No"
