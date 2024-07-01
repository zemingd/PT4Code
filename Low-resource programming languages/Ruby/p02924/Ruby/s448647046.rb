n = gets.to_i

def fact(a)
  return 0 if a == 1
  if a%2==0
    a*((a-1)/2) + a/2
  else
    a*(a-1)/2
  end
end

puts fact(n)
