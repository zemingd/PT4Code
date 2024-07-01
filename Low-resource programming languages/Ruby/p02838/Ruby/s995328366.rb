N = gets.chomp.to_i
a = gets.split.map(&:to_i)
sum = 0

(0..(N - 1)).each do |i|
  (i..(N - 1)).each do |j|
	sum += ((a[i]) ^ (a[j])) 
  end
end
puts sum % 1000000007