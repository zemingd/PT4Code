H, A = gets.split.map(&:to_i)

unless H.modulo(A) == 0
  ans = H / A + 1
else
  ans = H / A
end
puts ans
