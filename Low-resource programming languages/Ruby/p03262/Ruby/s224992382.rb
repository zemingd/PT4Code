N, X = gets.chomp.split().map(&:to_i)
x = gets.chomp.split().map{|i| (i.to_i - X).abs}

ans = x.shift
x.each do |i|
  ans = ans.gcd(i)
end

puts ans
