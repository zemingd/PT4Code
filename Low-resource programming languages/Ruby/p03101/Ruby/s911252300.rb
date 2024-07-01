def f(res,i)
  return res ^ i
end


A,B = readline.chomp.split.map(&:to_i)
res = nil

if (A == B)
  res = A
elsif (A % 2 == 0) && (B % 2 == 1)
  res = 0
elsif (A % 2 == 0) && (B % 2 == 0)
  res = f(1,B)
elsif (A % 2 == 1) && (B % 2 == 0)
  res = f(A,B)
else
  res = f(A,1)
end

p res