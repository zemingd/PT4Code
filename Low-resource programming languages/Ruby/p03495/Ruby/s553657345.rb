
N, K = gets.chomp.split(" ").map(&:to_i)

A = Hash.new(0)
numbers = gets.chomp.split(" ")
numbers.each do |number|
  A[number] += 1
end
if A.length > K+1 then
  reduce_size = A.length - (K + 1)
  ball_num = A.sort {|(k1, v1), (k2, v2)| v1 <=> v2 }[0..reduce_size].inject(["0",0]){|sum, item|
    sum[1] += item[1]
    sum
  }[1]
  print("#{ball_num}")
elsif A.length - K == 1 then
  ball_num = A.sort {|(k1, v1), (k2, v2)| v1 <=> v2 }[0][1]
  print("#{ball_num}")
else
  print("0")
end