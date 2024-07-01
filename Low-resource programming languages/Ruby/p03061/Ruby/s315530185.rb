n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

sort_arr = arr.sort
ans = sort_arr.uniq[1] || sort_arr.uniq[0]
while ans > 1 do
  fail_count = 0
  sort_arr.each do |num|
    fail_count += 1 if num % ans != 0
    break if fail_count >= 2
  end
  break if fail_count < 2
  ans -= 1
end
puts ans
