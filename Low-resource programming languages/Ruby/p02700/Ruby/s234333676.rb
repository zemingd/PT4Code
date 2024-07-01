a,b,c,d = gets.chomp.split.map(&:to_i)

until a <= 0 do
  c = c-b
  a = a-d
  break a <= 0
end

if a > c
  puts "Yes"
else
  puts "No"
end