n,k = gets.strip.split(' ').map(&:to_i)
a = gets.strip.split(' ').map(&:to_i)

(n-k).times do |i|
  s = a[i] < a[i+k] ? 'Yes' : 'No'
  puts s
end