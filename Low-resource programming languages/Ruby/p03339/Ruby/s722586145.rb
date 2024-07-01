N = gets.to_i
S = gets.chomp
arr1 = Array.new(N+1,0)
arr2 = Array.new(N+1,0)
s1 = s2 = S
for i in 0..N+1 do
  if i == 0
    arr1[i] = 0
  elsif s1[i-1] == "W"
    arr1[i] = arr1[i-1] + 1
  else
    arr1[i] = arr1[i-1]
  end
  j = N - i
  if j == N
    arr2[j] = 0
  elsif s2[j] == "E"
    arr2[j] = arr2[j+1] + 1
  else
    arr2[j] = arr2[j+1]
  end
end

arr = Array.new(N+1){|i| arr1[i] + arr2[i]}

puts arr.min