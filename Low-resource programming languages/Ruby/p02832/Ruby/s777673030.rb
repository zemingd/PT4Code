=begin
N
A1 A2 ... An
=end

n = gets.chomp.split(" ").map(&:to_i)
as = gets.chomp.split(" ").map(&:to_i)

c_number = 0
b_count = 0

as.each do |a|
  if a == c_number + 1
    c_number += 1
  else
    b_count += 1
  end
end

if c_number == 0
  puts -1
else
  puts b_count
end
