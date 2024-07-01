N = gets.to_i
A = gets.split.map(&:to_i).sort

min = A.first

flag = A[1..-1].all? do |a|
  a % min == 0
end

if flag
  puts min
else
  puts 1
end
