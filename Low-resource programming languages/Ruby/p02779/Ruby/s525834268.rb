N = gets.to_i
A = gets.split.map(&:to_i)
if A.size == A.uniq.size
  puts "Yes"
else
  puts "No"
end