N,K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)
a_uniq = A.uniq
a_length = a_uniq.length
x = 0
if a_length > K
  a_arr = []
  a_uniq.each do |a|
     a_arr.push(A.count(a))
  end
  a_arr.sort!
  diff = a_length - K
  x = a_arr[0..diff-1].inject(:+)
end
print(x)