A, B, C, K = gets.split(' ').map(&:to_i)

k = K

count = 0;
[A, B, C].each.with_index do |num, index|
  if k < num
    count += (1-index) * k
    break
  else
    count += (1-index) * num
    k -= num
  end
end

puts count