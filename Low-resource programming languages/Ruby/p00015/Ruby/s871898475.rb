input = readlines
N = input[0].to_i

for i in 1..N do
  n = input[i].chomp.to_i
  i % 2 != 0 ? (a=n; next;) :(b=n)
  puts (a+b) < 10**80 ? (a+b):"overflow"
end
