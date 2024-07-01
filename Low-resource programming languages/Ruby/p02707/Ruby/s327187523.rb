N = readline().to_i
A = readline().split(' ').map(&:to_i)

1..upto(N) do |n|
  puts A.count(n)
end
