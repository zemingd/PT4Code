N = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)
a = nil
b = nil

if P == Q then
  puts 0
else
  [*1..N].permutation(N).to_a.each_with_index do |z, index|
    a = index if P == z
    b = index if Q == z
    break if a != nil && b != nil
  end
  puts (a-b).abs
end