n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)

puts (0...n).inject(0) {|sum, i|
    sum += a[i] + 1 == a[i+1] ? b[a[i]-1] + c[a[i]-1] : b[a[i]-1]
}