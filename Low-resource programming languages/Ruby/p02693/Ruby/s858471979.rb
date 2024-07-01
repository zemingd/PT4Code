K=gets.to_f()
A,B=gets.split()
a=A.to_f()/K
b=B.to_f()/K
diff = b-a
if diff>2.0 || diff==0.0 || a==a.to_i() || b==b.to_i() then
  puts('OK')
else
  puts('NG')
end
