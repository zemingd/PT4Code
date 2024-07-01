N = gets.chomp.to_i
s = []
N.times do
  s << gets.chomp.to_i
end
s_n_ten=[]
s_ten=[]
s.each do |x|
  if x % 10 == 0 then
    s_ten << x
  else
    s_n_ten << x
  end
end
s_n_ten.sort!
s_n_ten_sum = s_n_ten.sum
if s_n_ten.size == 0 then
  puts 0
elsif s_n_ten_sum % 10 == 0 then
  s_ten_sum = s_ten.sum
  puts s_ten_sum + s_n_ten_sum - s_n_ten[0]
else
  s_ten_sum = s_ten.sum
  puts s_ten_sum + s_n_ten_sum  
end