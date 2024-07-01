n = gets.to_i

def fact(a)
  a==1 ? 1 : a + fact(a -1)
end

puts n==1 ? 0 : fact(n-1)
