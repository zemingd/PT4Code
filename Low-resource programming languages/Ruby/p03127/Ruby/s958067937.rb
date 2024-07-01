N = gets.to_i
arr = gets.split.map(&:to_i)

puts arr.inject(arr[0]){|x, y|x.gcd(y)}
