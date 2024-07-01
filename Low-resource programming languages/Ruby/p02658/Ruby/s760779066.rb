N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)
m = 1

if A.include?(0)
  m = 0
else
  for i in 0..N-1 do
    if m > 10**18
      break
    end
    m *= A[i]
  end
  if m > 10**18
    m = -1
  end
end
p m
