n, k, q = gets.split.map(&:to_i)
a = Array.new(n).map { 0 }
q.times do |_|
  a[gets.to_i - 1] += 1
end
a.each { |num| puts k > q - num.to_i ? 'Yes' : 'No' }