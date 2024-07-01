N = gets.to_i
P = gets.split(" ").map(&:to_i)
# S = gets.chomp

cnt = 0
P.each_cons(3) do |x|
  cnt += 1 if x[1] == x.sort[1]
end

puts cnt
