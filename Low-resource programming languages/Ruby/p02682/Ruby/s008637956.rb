
A, B, C, K = STDIN.gets.split.map(&:to_i)

value = begin
  if K <= A
    K
  elsif K <= A + B
    A
  else
    A - (K - A - B)
  end
end

puts value
