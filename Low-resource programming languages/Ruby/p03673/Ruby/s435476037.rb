N = gets.to_i
a_list = gets.split.map(&:to_i)

b_list = Array.new(N)
if N.even?
  (N - 1).step(by: -2, to: 1).with_index do |n, i|
    b_list[i] = a_list[n]
  end
  0.step(by: 2, to: N - 2).with_index do |n, i|
    b_list[N / 2 + i] = a_list[n]
  end
else
  (N - 1).step(by: -2, to: 0).with_index do |n, i|
    b_list[i] = a_list[n]
  end
  1.step(by: 2, to: N - 2).with_index do |n, i|
    b_list[N / 2 + 1 + i] = a_list[n]
  end
end
puts b_list.join(' ')
