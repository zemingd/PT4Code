S = gets
N = S.length

f1 = true
n1 = (N - 1) / 2

for i in 0..n1 - 1
  if S[i] != S[n1 - 1 - i]
    f1 = false
  end
end

f2 = true
n2 = (S.length + 3) / 2

for i in n2 - 1..N - 1
  if S[i] != S[n2 - 1 + (N - 1 - i)]
    f2 = false
  end
end

if f1 && f2
  puts "Yes"
elsif puts "No"
end
