N, M, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
ac = A.count
bc = B.count

count = 0
sum = 0
all = []
until A.empty? || B.empty?
  if A[0] < B[0]
    all << A.shift
  else
    all << B.shift
  end
end
if A.empty?
  all << B
  all.flatten!
else
  all << A
  all.flatten!
end
all.each do |i|
  if (sum + i) > K
    print count
    exit
  else
    sum += i
    count += 1
  end
end
print count