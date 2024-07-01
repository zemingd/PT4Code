N = gets.strip.to_i
A = gets.strip.split.map(&:to_i)
 
count = 0
N.times do |i|
  break if i + 2 >= N
  if (A[i + 1] > A[i]) && (A[i + 1] < A[i + 2])
    count += 1
  elsif A[i + 1] > A[i + 2] && A[i + 1] < A[i]
    count += 1
  end
end

puts count
