l = gets.to_f
s = (l/3.0).to_s.split('.')
if s[1] == 0
  puts s * s * s
  exit
else
  n = (l/3.0)
  u = n * 2
  pe = l-u
  puts n*n*pe
end

