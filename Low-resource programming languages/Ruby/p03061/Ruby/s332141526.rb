n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)
if n == 2
  ans = array.max
else
  start_gcd_array = [array[0]]
  end_gcd_array   = [array[n - 1]]
  (n - 1).times do |i|
    start_gcd_array << start_gcd_array[i].gcd(array[i + 1])
  end
  (n - 1).times do |i|
    end_gcd_array << end_gcd_array[i].gcd(array[n - 2 - i])
  end
  may_ans = []
  (n - 2).times do |i|
    may_ans << start_gcd_array[i].gcd(end_gcd_array[n - 3 - i])
  end
  may_ans << start_gcd_array[n - 2]
  may_ans << end_gcd_array[n - 2]
  ans = may_ans.max
end
puts ans