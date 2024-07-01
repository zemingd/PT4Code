A = gets.chomp
N = A.to_i
S = A.chars.map(&:to_i).sum
if N % S == 0
  puts "Yes"
else
  puts "No"
end