N,K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)
a_uniq = A.uniq
a_count = a_uniq.length
x = 0
if a_count > K
  a_arr = []
  a_uniq.each do |a|
     a_arr.push(A.count(a))
  end
  a_arr.sort!
  diff = a_count - K
  for i in 1..diff
    x += a_arr[i-1]
  end
end
print(x)