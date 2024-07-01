gets
a = gets.split.map &:to_i
arr = []
a.each_with_index do |_aa, aai|
  arr << (a.select.with_index { |_ar, ari| ari != aai }).inject { |memo, item| memo.gcd(item) }
end
p arr.max
