N = gets.to_i
S = gets.chomp
arr1 = Array.new(N+1,0)
arr2 = Array.new(N+1,0)
arr = Array.new(N+1,0)

for i in 0..N do
  if i == 0
    arr1[i] = 0
  elsif S[i-1] == "W"
    arr1[i] = arr1[i-1] + 1
  else
    arr1[i] = arr1[i-1]
  end
  arr[i] += arr1[i]
  j = N - i
  if j == N
    arr2[j] = 0
  elsif S[j] == "E"
    arr2[j] = arr2[j+1] + 1
  else
    arr2[j] = arr2[j+1]
  end
  arr[j] += arr1[j]
end

puts arr.min
