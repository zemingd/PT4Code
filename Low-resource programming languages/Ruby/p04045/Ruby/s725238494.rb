n, k = gets.chomp.split.map(&:to_i)
d = gets.chomp.split.map(&:to_i)

zero = d.include?(0)

usable = (1..9).to_a.select{|e| !d.include?(e) }
usable.push(0)

ans = 10 ** 9
usable.repeated_permutation(5) do |a|
  num = "#{a[0]}#{a[1]}#{a[2]}#{a[3]}#{a[4]}".to_i
  next if zero && num.to_s =~ /0/
  next unless num >= n
  ans = num if ans > num
end
p ans
