A,B,C = gets.strip.split.map(&:to_i)

if B/A >= C then
  puts C
else
  puts B/A
end