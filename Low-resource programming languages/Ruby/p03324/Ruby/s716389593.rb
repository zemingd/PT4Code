D,N = gets.split(" ").map { |e| e.to_i }

if D == 0
  num = N
else
  num = 100**D * N
end

puts num
