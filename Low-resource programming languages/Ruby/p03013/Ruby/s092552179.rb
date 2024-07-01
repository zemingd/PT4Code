n, m = gets.chomp.split(' ').map(&:to_i)
arr = Array.new(n)
m.times do
  arr[gets.chomp.to_i] = 0
end
arr[0] = 1
arr[1] ||= 1

(2..n).each do |num|
  arr[num] ||= (arr[num-2] + arr[num-1]) % 1_000_000_007
end
puts arr[n]
