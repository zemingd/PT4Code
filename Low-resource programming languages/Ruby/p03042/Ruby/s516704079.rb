# N, K = gets.split(" ").map(&:to_i)
S = gets.chomp

a = S[0...2].to_i
b = S[2...4].to_i

is_a = 1 <= a && a <= 12
is_b = 1 <= b && b <= 12
if is_a
  if is_b
    puts 'AMBIGUOUS'
  else
    puts 'MMYY'
  end
else
  if is_b
    puts 'YYMM'
  else
    puts 'NA'
  end
end
