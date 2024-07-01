n = gets.to_i
a = gets.split("\s").map(&:to_i)

sub = Array.new(n, 0)

(n-1).times do |i|
  sub[a[i]-1] += 1
end

puts sub