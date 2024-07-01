def f(n)
  digit_sum = 0
  while n>0 do
    digit_sum += n%10
    n /= 10
  end
  digit_sum
end

N = gets.to_i
if N % f(N) == 0 then
  puts "Yes"
else
  puts "No"
end