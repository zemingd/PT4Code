n = gets.to_i
res = 0
ue = Math.sqrt(n).to_i
a = [*(1..ue)]
com = a.repeated_permutation(3).to_a
res = Array.new(n,0)
com.each do |x,y,z|
  tmp = x**2 + y**2 + z**2 + x*y + y*z + x*z
  if tmp >= 1 && tmp <= n
    res[tmp - 1] += 1
  end
end
puts res