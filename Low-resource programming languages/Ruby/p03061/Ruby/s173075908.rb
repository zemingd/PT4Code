def recursive(val, arr)
  return arr.length == 0 ? val : val.gcd(recursive(arr[0], arr[1..-1]))
end

_ = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

gcds = []

a.each_with_index do |_, i|
  gcds << recursive(0, a[0...i]).gcd(recursive(0, a[i+1..-1]))
end

puts gcds.max
