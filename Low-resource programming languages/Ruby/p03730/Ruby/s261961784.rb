A, B, C = gets.chomp.split(" ").map(&:to_i)

wk = A.gcd(B)
if wk == 1 then
  puts 'YES'
elsif C % wk == 0 then
  puts 'YES'
else
  puts 'NO'
end
