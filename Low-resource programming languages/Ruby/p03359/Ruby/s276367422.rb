gets_line = gets

month,day = gets_line.split(' ').map(&:to_i)

if month <= day
  puts month
else
  puts month - 1
end