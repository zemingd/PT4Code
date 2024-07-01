def rec(n, arr)
  div = (2..(n**0.5).to_i).find { |i| n % i == 0 }
  return arr << n if div.nil?

  rec(n / div, arr << div)
end

n = gets.to_i
as = gets.split.map(&:to_i)

gcd = as.inject(:gcd)
as.map! { |a| a / gcd }

divisor = rec(as[0], []).sort.uniq
ans_without_a0 = as[1..-1].inject(:gcd)

divs = []
divisor.each do |i|
  tmp = as.select { |a| a % i != 0 }
  divs << tmp[0] if tmp.size == 1
end

max = 1
divs.each do |s|
  as_tmp = as.dup
  as_tmp.delete(s)
  gcd_tmp = as_tmp.inject(:gcd)
  max = gcd_tmp if max < gcd_tmp
end
puts [gcd * max, ans_without_a0].max
