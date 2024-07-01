# array = [*1..q].map { |_| gets.split.map(&:to_i) }
# n = gets.split.map(&:to_i)
# a = [*1..m].repeated_combination(n).to_a



k = gets.to_i


a = [*1..k].repeated_permutation(3).to_a

s = 0
a.each do |ary|
  s += ary[0].gcd(ary[1]).gcd(ary[2])
end

puts s
