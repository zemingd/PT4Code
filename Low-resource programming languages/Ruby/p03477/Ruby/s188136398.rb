n,a,b = gets.strip.split(" ").map(&:to_i)
sum = []
(1..n).each do |m|
   sum << m if m.to_s.split("").map(&:to_i).inject(:+).between?(a,b)
end
p sum.inject(:+)