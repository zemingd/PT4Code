n = gets.to_i
A = []
n.times do
  A << gets.to_i
end
# A << 0
# A << 10**9 + 1
A.sort!

succ = 0
num = 0

1.upto(A.size() - 1) do |i|
  # p "prev #{A[i-1]} cur #{A[i]} succ: #{succ}"
  if A[i - 1] == A[i]
    succ += 1
  else
    if (succ % 2) == 0
      num += 1
    end
    succ = 0
  end
end

puts num
