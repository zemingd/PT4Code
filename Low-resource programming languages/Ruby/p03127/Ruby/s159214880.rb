N = gets.to_i
A = gets.split.map(&:to_i).sort!

min_d = 10000000000
(N-1).times do |i|
  min_d = (A[i]-A[i+1]).abs if (A[i]-A[i+1]).abs < min_d
end

if min_d == 1
  puts 1
elsif min_d == 0
  puts A[0]
else
  min_r = 10000000000
  N.times do |i|
    min_r = A[i]%min_d if A[i]%min_d < min_r
  end
  if min_r == 0
    puts min_d
  else
    puts min_r
  end
end