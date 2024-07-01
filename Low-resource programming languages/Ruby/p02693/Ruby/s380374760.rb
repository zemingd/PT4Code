K=gets.to_i()
A,B=gets.split()
diff = (B.to_i()/K)-(A.to_i()/K)
if diff>1 || diff==0 then
  puts('OK')
else
  puts('NG')
end