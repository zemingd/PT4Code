N = gets.chomp.to_i
s = []
N.times do
  s << gets.chomp.to_i
end
s_ten_sum = 0
s_n_ten_sum = 0
s_n_ten_min = 100
s.each do |x|
  if x % 10 == 0 then
    s_ten_sum = s_ten_sum + x
  else
    s_n_ten_sum = s_n_ten_sum + x
    if x < s_n_ten_min then
      s_n_ten_min = x
    end
  end
end
if s_n_ten_sum == 0 then
  puts 0
elsif s_n_ten_sum % 10 == 0 then
  puts s_ten_sum + s_n_ten_sum - s_n_ten_min
else
  puts s_ten_sum + s_n_ten_sum
end