K=gets.to_f()
A,B=gets.split()
diff = (B.to_f()/K)-(A.to_f()/K)
if diff>1.0 || diff==0.0 then
  puts('OK')
else
  puts('NG')
end
