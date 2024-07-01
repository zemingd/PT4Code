n, q = gets.split.map(&:to_i)
s = gets.chomp
num = []
q.times do
  num << gets.split.map(&:to_i)
end
arr = Array.new(n+1,0)

n.times do |i|
  arr[i] += arr[i-1]
  if s[i,2] == "AC"
    arr[i] += 1
  end
end

num.each do |j,k|
  puts arr[k-2] - arr[j-2]
end
