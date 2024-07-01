n, m = gets.chomp.split(' ').map(&:to_i)
ary = gets.chomp.split(' ').map(&:to_i)
answer = 'No'

sum = 0
ary.each do |a|
  sum += a
end

flg = sum * Rational(1, (4 * m))

ary.each_with_index do |a, i|
  answer = a > flg ? 'Yes' : 'No'
  break if flg == "No"
  break if i == m
end

print answer