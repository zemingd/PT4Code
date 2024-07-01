K=gets.to_i()
A,B=gets.split()

if ((B.to_i()/K)-(A.to_i()/K))>1 then
  puts('OK')
else
  puts('NG')
end