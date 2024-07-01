K, A, B = $stdin.read.split(/\n| /).map(&:to_i)

a = A%K
b = B%K

if a==0 || b == 0 || (A!=B && a <= b)
  puts "OK"
else
  puts "NG"
end