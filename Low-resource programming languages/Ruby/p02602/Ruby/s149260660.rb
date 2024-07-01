n, k = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

current = 1
(0...k).each { |i| current *= a[i] }

(1..n-k).each do |i|
  n = current / a[i-1] * a[i+k-1]
  if current < n
    puts "Yes"
  else
    puts "No"
  end
  current = n
end
