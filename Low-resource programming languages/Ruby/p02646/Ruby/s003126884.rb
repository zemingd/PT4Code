a_start, a_sp = gets.split.map(&:to_i)
b_start, b_sp = gets.split.map(&:to_i)
t = gets.to_i

sa = b_start - a_start

if a_sp <= b_sp
  puts "NO"
  exit  
end

tume = a_sp - b_sp

if sa <= tume * t
  puts "YES"
  exit
end

puts "NO"
    