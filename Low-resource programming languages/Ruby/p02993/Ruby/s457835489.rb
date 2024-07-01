input = gets
tes = ""
flag = 0
input.chars.each{ |x|
  flag = 1 if x == tes
  tes = x
}
if flag == 1
  puts "Bad"
else
  puts "Good"
end