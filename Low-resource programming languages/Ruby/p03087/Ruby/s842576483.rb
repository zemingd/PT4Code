# A[i], A[i-1] = "C", "A"になるiの場所で累積和。探索はB[i]-B[i-1]

n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp.chars
arr = 0.upto(n).to_a.map{0}
(1...n).to_a.each do |i|
  if s[i-1] == "A" && s[i] == "C"
    arr[i]+=1
  end
end
(1...n).to_a.each do |i|
  arr[i]+=arr[i-1]
end
q.times do
  a, b = gets.chomp.split.map(&:to_i)
  puts arr[b-1] - arr[a-1]
end
