K, A, B = $stdin.read.split(/\n| /).map(&:to_i)

a = A%K
b = B%K

if a==0 || (a!=b && b < a)
  puts "OK"
else
  puts "NG"
end