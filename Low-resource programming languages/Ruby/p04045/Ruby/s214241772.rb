n, k = gets.chomp.split.map(&:to_i)
d = gets.chomp.split.map(&:to_i)

usable = (0..9).to_a.select{|e| !d.include?(e) }

ans = 10 ** 6
usable.repeated_permutation(4) do |a|
  num = "#{a[0]}#{a[1]}#{a[2]}#{a[3]}".to_i
  next if num < n
  ans = num if ans > num
end
p ans
