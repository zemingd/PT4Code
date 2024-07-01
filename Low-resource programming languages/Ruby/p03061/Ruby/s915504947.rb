n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

sort_arr = arr.uniq.sort
ans = sort_arr[1] || sort_arr[0]
while ans > 1 do
  fail_count = 0
  sort_arr.each do |num|
    fail_count += arr.count(num) if num % ans != 0
    break if fail_count >= 2
  end
  break if fail_count < 2
  ans -= 1
end
puts ans
