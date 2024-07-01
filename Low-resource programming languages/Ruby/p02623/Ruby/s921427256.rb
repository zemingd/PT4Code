N, M, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

tmp_time = 0
c = 0

while tmp_time <= K do
  if A.empty? && B.empty?
    break
  elsif A.empty?
    tmp_time += B.shift
  elsif B.empty?
    tmp_time += A.shift
  elsif A.first <= B.first
    tmp_time += A.shift
  else
    tmp_time += B.shift
  end
  c += 1 if tmp_time <= K
end

puts c