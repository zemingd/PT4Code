n,m,k = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)
b_arr = gets.chomp.split(" ").map(&:to_i)

count = 0
while true do
  a = a_arr.shift
  b = b_arr.shift
  if a.nil? && b.nil?
    break
  elsif a.nil?
    tmp = b
  elsif b.nil?
    tmp = a
  elsif a < b
    tmp = a
    b_arr.unshift(b)
  else
    tmp = b
    a_arr.unshift(a)
  end
  if k >= tmp
    k -= tmp
    count += 1
  else
    break
  end
end
puts count