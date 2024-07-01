A = []
3.times do
  A.concat(gets.chomp.split(" ").map(&:to_i))
end
N = gets.chomp.to_i
B = Array.new(9, nil)
N.times do |i|
  b = gets.chomp.to_i
  idx = A.index(b)
  B[idx] = 1 if idx
end

if (B[0] == 1 && B[1] == 1 && B[2] == 1) ||
  (B[3] == 1 && B[4] == 1 && B[5] == 1) ||
  (B[6] == 1 && B[7] == 1 && B[8] == 1) ||
  (B[0] == 1 && B[3] == 1 && B[6] == 1) ||
  (B[1] == 1 && B[4] == 1 && B[7] == 1) ||
  (B[2] == 1 && B[5] == 1 && B[8] == 1) ||
  (B[0] == 1 && B[4] == 1 && B[8] == 1) ||
  (B[2] == 1 && B[4] == 1 && B[6] == 1)
  puts "Yes"
else
  puts "No"
end
