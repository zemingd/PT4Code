def f(res,i)
  return res ^ i
end

def f2(a,b)
  return f(1,b)
end

def f3(a,b)
  return f(a,b)
end

def f4(a,b)
  return f(a,1)
end

A,B = readline.chomp.split.map(&:to_i)
res = A

# result = (B - A) % 2 == 0 ? f(1,B) : f(A,B)
# p result

# (A+1..B).each do |i|
#   res = f(res,i)
# end

j = 0
ary = []
result = nil

if (A % 2 == 0)
  result = f2(A,B)
else
  result = f3(A,B)
end

p result