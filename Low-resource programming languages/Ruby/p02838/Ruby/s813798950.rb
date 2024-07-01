n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

len = a.max.to_s(2).length
a = a.map{ |x| x.to_s(2).rjust(len, '0') }

sum = 0
(0..n-2).each do |i|
  (i+1..n-1).each do |j|
    sum += (0..len-1).map { |l| a[i][l] == a[j][l] ? '0' : '1' }.join.to_i(2)
  end
end

puts sum % (10 ** 9 + 7)