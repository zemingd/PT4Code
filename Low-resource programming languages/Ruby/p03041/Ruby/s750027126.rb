n,k = gets.split.map(&:to_i)
arr = gets.chomp.split('').map(&:to_s)

a = []
arr.each_with_index do |b,i|
  b = b.downcase if i == k-1
  a << b
end

puts a.join