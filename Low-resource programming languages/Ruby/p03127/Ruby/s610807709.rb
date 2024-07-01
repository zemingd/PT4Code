N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

until A.size == 1 do
  wk = A.min
  A.map!{|a| a % wk}
  A << wk
  A.uniq!
  A.delete(0)
end

puts A[0]
