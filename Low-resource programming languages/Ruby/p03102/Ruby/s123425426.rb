n,m,c=gets.chomp.split(" ").map(&:to_i)
arr_b = gets.chomp.split(' ').map(&:to_i)
ans = 0
n.times do 
  arr_a = gets.chomp.split(' ').map(&:to_i)
  sum = c
  m.times do |k|
  sum += arr_a[k] * arr_b[k]
  end
  if sum > 0
    ans += 1
  end
end

puts ans