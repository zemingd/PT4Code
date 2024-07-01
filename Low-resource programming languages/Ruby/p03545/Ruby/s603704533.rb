def f(x)
  if x==1
    return "-"
  else
    return "+"
  end
end
n = gets.strip.chars.map(&:to_i)
ary = []
[0, 1].repeated_permutation(3) do |bits|
  sum = n.sum
  for i in 1..3
    if bits[i] == 1
      sum -= 2*n[i]
    end
  end
  if sum == 7
    ary << [n[0],f(bits[1]),n[1],f(bits[2]),n[2],f(bits[3]),n[3],"=",7].to_a
  end
end
print ary[0].join("")