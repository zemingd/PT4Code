S = gets.chomp
A = S[0,2].to_i
B = S[2,2].to_i

ans = ''

if A <= 12
  ans << 'MM' if A > 0
else
  ans << 'YY'
end

if B <= 12
  ans << 'MM' if B > 0
else
  ans << 'YY'
end

if ans == '' || ans == 'YY' || ans == 'MM'
  puts 'NA'
elsif ans == 'MMMM'
  puts 'AMBIGUOUS'
else
  puts ans
end