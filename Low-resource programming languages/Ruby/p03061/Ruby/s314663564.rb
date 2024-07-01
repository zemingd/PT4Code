n = gets.split(" ").map(&:to_i)

a = []

a = gets.split(" ").map(&:to_i)

a = a.sort
ans_array = []

a.each_with_index do |a_c,i|
  break if i == 10
  ans_array <<  a[i] - a[0]
end

ans = ans_array.max

ans = a[0] if ans_array.max == 0

print ans


