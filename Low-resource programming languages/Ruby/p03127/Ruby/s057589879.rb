N = gets.to_i
A = gets.split.map(&:to_i)

while A.size > 1
  A.uniq!
  n = A.min
  A.map! {|a| a % n }.push(n).delete(0)
end
puts n
