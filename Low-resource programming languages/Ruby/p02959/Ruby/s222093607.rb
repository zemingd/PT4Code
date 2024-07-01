N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

ret = 0
monsters = A[0]
N.times do |i|
  if monsters <= B[i]
    power = B[i] - monsters
    ret += monsters
    if A[i + 1] <= power
      monsters = 0
      ret += A[i + 1]
    else
      remain = A[i + 1] - power
      ret += power
    end
  else
    monsters = A[i + 1]
    ret += B[i]
  end
end
puts ret