D,N = gets.split(" ").map { |e| e.to_i }

if N == 100
  if D == 0
  num = N+1
  else
  num = 100**D * (N+1)
  end
else
  if D == 0
    num = N
  else
    num = 100**D * N
  end
end

puts num
