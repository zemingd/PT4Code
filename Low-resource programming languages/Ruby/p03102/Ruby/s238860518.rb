N, M, C = gets.chomp.split(' ').map(&:to_i)
B = gets.chomp.split(' ').map(&:to_i)
ans = 0
input = Array.new(N) { gets.chomp.split(' ').map(&:to_i) }
input.each do |i|
  sum = 0
  i.each_with_index do |j, index|
    sum += j * B[index]
  end
  new_sum = sum + C
  ans += 1 if new_sum > 0
end
p ans
