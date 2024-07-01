n = gets.to_i
def f n
  return 0 if n==0
  return n%10+f(n/10)
end
puts (n%f(n)==0)? "Yes" : "No"
