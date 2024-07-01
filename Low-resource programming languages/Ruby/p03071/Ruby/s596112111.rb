IN = gets.chomp
A, B = IN.split.map(&:to_i)

if A == B
  puts A + B
else
  puts [A, B].max + [A, B].max - 1
end
